# number = 10000

# string_num = number.to_s

# p string_num.length

# new_string = number.to_s.insert( -4, "," )

# p new_string


def add_commas(number)
empty_string = ""
  new_string = number.to_s.length
  new_string.times do |index|
    p index
    if index % 3 == 1 && index != 0
      empty_string << "," + number.to_s[index]
      p "*" * 50
    else
      empty_string << number.to_s[index]
    end
    
  end
  p empty_string
end

add_commas(5000000000000000000000)

# add_commas(10000000)
# add_commas(45000)
# add_commas(5000000000000)
# add_commas("abcdefghijklmnop")
# add_commas(0.0009)
# add_commas(45000)

# add_commas(5)

# count = 1
#   new_string = number.to_s





#   new_string.each_char do |index| 
#     if count % 4 == 0
#     count += 1
#   end
   
# p new_string
# end



# string = "1000000"


# total = string.length

# # .insert(-4, ",")

# p total



