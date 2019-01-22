formatted = []
def print_grid(input)
  input.each do |row|
 puts row.join(" ")
  end 
end



def clean_yard(yard)
coordinates = []
basket = []
  yard.length.times do |index|
      print_grid(yard)
      puts " "
    yard[index].length.times do |index_2|
        if yard[index][index_2] == "E"
          coordinates << "Column #{index_2} : Row #{index}"
          basket << yard[index][index_2]
          yard[index][index_2] = "G"
        end 
    end
  end
puts coordinates
puts " "
puts "There are #{basket.length} eggs in the basket!"
end

backyard = [ ["G", "G", "G", "G", "G", "G", "G", "G", "E", "G", "G", "E", "G", "E"],
             ["G", "G", "E", "G", "G", "G", "G", "G", "G", "E", "G", "G", "G", "G"],
             ["G", "G", "G", "G", "G", "E", "G", "E", "G", "G", "G", "G", "G", "G"],
             ["G", "G", "G", "E", "G", "G", "G", "G", "G", "G", "G", "G", "G", "G"],
             ["G", "E", "G", "G", "G", "G", "G", "G", "G", "G", "G", "G", "G", "G"],
             ["G", "G", "G", "G", "G", "G", "G", "E", "G", "G", "G", "G", "G", "G"],
             ["G", "G", "G", "G", "G", "G", "G", "G", "G", "G", "G", "G", "E", "G"],
             ["G", "G", "G", "G", "G", "G", "G", "G", "G", "G", "G", "G", "E", "G"],
             ["G", "G", "G", "G", "E", "G", "G", "G", "G", "G", "G", "G", "G", "G"],
             ["G", "G", "E", "G", "G", "G", "G", "G", "G", "E", "G", "G", "G", "G"],
             ["G", "G", "G", "G", "E", "G", "G", "G", "G", "G", "G", "G", "G", "E"],
             ["G", "G", "G", "G", "G", "G", "G", "G", "G", "G", "G", "E", "G", "G"],

            ]
clean_yard(backyard)
