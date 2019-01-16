bloggers_information = [
                        [["James Spader"],["214.555.1357"],["123 N South St."],["Chicago"],["il"],["60645"],["@samspade"]],
                        [["Jenny Forrest"],["Schamberg"],["il"],["312-555-2244"],["@imaboat"]],
                        [["Jimmy Stuart"],["@getyerwings"],["313 555 9865"],["1128 Alameda Ave"],["Glendale"],["CA"],["92606"]],
                        [["Mountain Joe"],["3035550021"],["@campfire"]],
                        [["Mr. Henderson"],["312-555-9224"],["Chicago"],["il"],["60647"],["@hairy"]],
                        [["Nerf Herder"],["123 N South St."],["Chicago"],["il"],["60645"],["@blueharvest"],["310.555.2234"]]
                      ]

def collect_contact_info(data)


contacts = []

  data.length.times do |index|
    
  contacts << data[index][0]
  
  end

p contacts.flatten
end


collect_contact_info(bloggers_information)


def twitter_handle(data_2)
twitter_array = []


data_2.length.times do |index|
  ind_array = data_2[index]

    ind_array.each do |index_2|

      if index_2[0] =~ /\A[@]/
        twitter_array << index_2

      end

       if index_2[0] =~ \d{3}(.|-|)\d{3}(.|-|)\d{4}
        twitter_array << index_2

      end

    end
  end
p twitter_array.flatten
end


twitter_handle(bloggers_information)
