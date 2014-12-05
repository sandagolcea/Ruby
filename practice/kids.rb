class Kids
	# def name=(name)
	# 	@name = name
	# end

	# def name
	# 	@name
	# end
	attr_accessor :name, :age, :toys

	def initialize(name, age=5)
		self.name = name
		self.age = age
		self.toys = []
	end

	def add_toys(name, color)
		Toys.new(name, color, self)
	end

	def show_toys
		# print self.name
		self.toys.each {|toy| puts "#{self.name}: #{toy.name} #{toy.color}"}
	end
end

class Toys
	attr_accessor :name, :color 
	def initialize(name, color = 'blue', owner)
		self.name = name
		self.color = color
		@owner = owner

		owner.toys << self
	end
 # p self.class # => Toys
end

mykid = Kids.new 'Steve'
# mykid.name = ('Matteo')

# mykid.age = 10

p mykid.age
p mykid.name

mykid.add_toys('bazooka', 'green')
mykid.add_toys('ferrari', 'red')
mykid.show_toys

# first create the Kids class
# inside the Kids class make an attr_accessor for the list of toys
# inside the Kids initialize method, initialize the list with empty values
# inside the Kids class define an addition method
# create Toys class with an initialize method
# from the addition method, create a toys object sending it the atrributes including self(current owner)
# in the Toys initialize method add self(the current toy) to the list of toys owned by owner(Kids.self)