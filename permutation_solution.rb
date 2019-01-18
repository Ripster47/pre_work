first_word = ARGV[0]
second_word = ARGV[1]

def permutation_checker(base_word, possible_permutation)
   word_arr = base_word.downcase.split("")
   permutation = possible_permutation.downcase.split("")
   counter = 0
  
   permutation.each do |letter|
    number = word_arr.index(letter)

    if !number
      p "Please try again"
      break
    elsif counter == (permutation.length - 1)
      p "Good Job"
    else
      word_arr.delete_at(number)
      counter += 1
    end
   end
end

permutation_checker(first_word, second_word)