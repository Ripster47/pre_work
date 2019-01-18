# old_c = ["a", "b", "c", "d", "e"]

# def as_adder(input)

# new_c =[]

#   input.length.times do |index|
#       if index < input.length - 1
#         new_c << input[index]
#         new_c << "awesomesauce"
#       else
#         new_c << input[index]
#         p new_c
#       end
#   end
  
# end

# as_adder(old_c)


def g_num(arr)

index = 1

  arr.length.times do 

    if arr[0] >= arr[index]
       index += 1
    else
      arr[0] = arr[index]
    end

  end

p arr[0]

end

numbers = [5,4,8,1,2]
numbers_2 = [-1, 1005, 47, 68, 34, 2, 1005, 0, 1900]
g_num(numbers_2)
