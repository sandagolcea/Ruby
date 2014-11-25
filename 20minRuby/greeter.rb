class Greeter
  
  attr_accessor :name

  def initialize(name="World")
    @name = name
  end

  def say_hi
    puts "Hi #{@name}!"
  end

  def say_bye
    puts "Bye #{@name}, come back soon."
  end
end

g = Greeter.new "Sandy"
g.say_hi
g.say_bye

g.name
g.name = "Betty"
g.say_hi