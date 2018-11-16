
class Cat

  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time.to_i
  end

  def eats_at
    if @meal_time <= 12
      return "#{@meal_time} AM"
    else
      return "#{@meal_time-12} PM"
    end
  end

  def meow
    return "My name is #{@name} and I eat #{@preferred_food} at #{eats_at}"
  end
end

cat1 = Cat.new("George", "tuna", 6)
cat2 = Cat.new("Eevee", "cat nip", 7)

puts cat1.meow
