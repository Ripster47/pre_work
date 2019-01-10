def mean(input_array)
  
  sum = 0
  input_array.each do |partial_mean|
    sum += partial_mean
  end

  final_mean = sum / input_array.length.to_f

end



def median(input_array)
  sorted_array = input_array.sort
  total_array = sorted_array.length
  
  if total_array % 2 != 0
     index = ((total_array + 1) / 2) - 1
     return sorted_array[index]

  else
    index_2 = total_array / 2 # = 5
    index_3 = (total_array - 2) / 2 # 4
    return (sorted_array[index_2] + sorted_array[index_3]) / 2.to_f
  end

end





numbers = [9, 13, 9, 11, 9, 13, 11, 9, 10, 8, 11]
numbers_2 = [1, 2, 201, 6, 13, 7, 2, 1, 17, 166]

p numbers_2.sort
p mean(numbers)
p median(numbers)
p median(numbers_2)
