

def average(scores)
sum = 0
  scores.each do |partial_avg|
    sum += partial_avg
  end
final_avg = sum / scores.length
end


def grade(*scores)
  final_avg = average(scores)

  if final_avg >= 90
    final_grade = "A"
  elsif final_avg < 90
    if final_avg >= 80
        final_grade = "B"
    elsif final_avg >= 70
        final_grade = "C"
    elsif final_avg >= 60
        final_grade = "D"
    elsif final_avg >= 50
        final_grade = "F"
    end
  end
end



p grade(100, 89, 99, 99, 96, 100)
p grade(34, 67, 89, 89, 70, 45, 56, 99, 100, 100, 56)
p grade(89, 70, 45, 56, 99, 100, 100, 56, 67, 89, 89, 70, 45, 56, 99, 100, 100, 56, 100, 100, 87, 65, 100, 100, 100, 100)