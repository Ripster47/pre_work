 class Die
    attr_reader :sides, :roll_value


    def initialize(input_options)
      @sides = input_options

    end

    def die_roll
      return rand(1..@sides)
    end

 end

 # die_1 = Die.new(6)

 # p die_1.die_roll
 class DiceBag < Die
  attr_reader :dice_quantity, :dice_array, :dice_type

  def initialize(input_options)

    @dice_array = []
    @dice_quantity = input_options[:number_of_dice]
    @dice_type = input_options[:dice_type]
    @dice_quantity.times do |index|
      @dice_array << Die.new(dice_type)
    end 

  end

  def change_die(number_of_sides)
    @number_of_sides = number_of_sides
  end

  def dice_roll_2
    final_rolls_arr = []
    @dice_array.each do |die|  
      final_rolls_arr << die.die_roll
    end
    return final_rolls_arr
  end

  def add_die(side_number)
    @dice_array << Die.new(side_number)
  end

end

 dice_bag_1 = DiceBag.new(
                          number_of_dice: 2,
                          dice_type: 6 
                          )

# pp dice_bag_1

dice_bag_1.add_die(20)

# pp dice_bag_1

dice_bag_1.add_die(8)
dice_bag_1.add_die(4)
dice_bag_1.add_die(4)
dice_bag_1.add_die(20)

# pp dice_bag_1

pp dice_bag_1.dice_roll_2























# class DiceCup
#   attr_reader :storage_array

#   def initialize(array_of_dice)    #[3,4,5,3,3,4,5,6,7] #store an array of dice objects
      
#       @storage_array = []
#       array_of_dice.each do |element|
        
#         @storage_array << Die.new(element)
#       end
#   end

#   def change_die
#       new_placement = []
#       @storage_array.each do |index|
#         new_placement << index.die_roll
#       end
#       return new_placement
          
#   end

#     # @contents = []
#     # @number_of_dice = input_options
# end

# # Commit 3 - Write Runner Code / Tests

# dicecup = DiceCup.new([1, 2, 3, 100, 200])

# p dicecup.change_die