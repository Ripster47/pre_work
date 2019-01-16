class Die

  attr_reader :number_of_sides, :roll_value

  def initialize(input_options)
    @number_of_sides = input_options
  end

  def roll
    @roll_value = rand(1..@number_of_sides)
  end

end


class DiceCup

  attr_reader :sides, :number_of_rolls

  def initialize(input_options)
    @sides = input_options[:sides]
    @number_of_rolls = input_options[:number_of_rolls]
  end

  def all_values

  d20 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
  d12 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
  d10 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  d8 = [1, 2, 3, 4, 5, 6, 7, 8]
  d6 = [1, 2, 3, 4, 5, 6]
  d4 = [1, 2, 3, 4]

  result = []

    if sides == 4

      @number_of_rolls.times do
        result << d4.sample
      end

    elsif sides == 6

      @number_of_rolls.times do
        result << d6.sample
      end

    elsif sides == 8

      @number_of_rolls.times do
        result << d8.sample
      end

    elsif sides == 10

      @number_of_rolls.times do
        result << d10.sample
      end

    elsif sides == 12

      @number_of_rolls.times do
        result << d12.sample
      end

    elsif sides == 20

      @number_of_rolls.times do
        result << d20.sample
      end

    else puts "This sided die doesnt exist! Try again!"

    end
    p result
  end

end


roll_d4 = DiceCup.new(sides: 4, number_of_rolls: 4)
roll_d6 = DiceCup.new(sides: 6, number_of_rolls: 4)
roll_d8 = DiceCup.new(sides: 8, number_of_rolls: 4)
roll_d10 = DiceCup.new(sides: 10, number_of_rolls: 4)
roll_d12 = DiceCup.new(sides: 12, number_of_rolls: 4)
roll_d20 = DiceCup.new(sides: 20, number_of_rolls: 4)

roll_d4.all_values
roll_d6.all_values
roll_d8.all_values
roll_d10.all_values
roll_d12.all_values
roll_d20.all_values

