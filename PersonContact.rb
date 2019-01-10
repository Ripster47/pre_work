class Person

  def initialize(first_name, last_name, hair_color, hobbies)
    @first_name = first_name
    @last_name = last_name
    @hair_color = hair_color
    @hobbies = hobbies
  end

  def first_name
    @first_name
  end

  def last_name
    @last_name
  end

  def hair_color
    @hair_color
  end

  def hobbies
    @hobbies
  end

  def add_hobby(hobby)
    @hobbies << hobby
  end

  def full_name
    @first_name + " " + @last_name
  end

  def email_address
    @first_name + "." + @last_name + "@gmail.com"
  end

  def info

  index = 0

  presentable_hobbies = " "

    @hobbies.length.times do
      presentable_hobbies << hobbies[index] + ", "
      index += 1
        
    end

  return "My name is #{first_name} #{last_name}, I have #{hair_color} hair and I like#{presentable_hobbies}"
  
  end

end

people = [ 
          Person.new("Bob", "Jones", "pink", ["basketball", "chess", "phone tag"]), 
          Person.new("Molly", "Parker", "black", ["computer programming", "reading", "jogging"]), 
          Person.new("Kelly", "Miller", "rainbow",["cricket", "banking", "stamp collecting"])
          ]

p people[0].full_name
p people[1].full_name
p people[2].full_name

p people[0].email_address
p people[1].email_address
p people[2].email_address


p people[0].info
p people[1].info
p people[2].info

p people[0].info.reverse