# Creates a Spy class that communicates with a Weapon class; just for play play

class Spy

	attr_accessor :name, :weapons
	
	def initialize(name)
		self.name = name
		self.weapons = []
	end

	def add_weapon(name, price=0)
		Weapon.new name, self, price
	end

	# getter method, not needed since we have the attr_accessor
	# def weapons
	# 	@weapons
	# end

	def show_weapons
		puts "#{self.name}'s weapons:"
		@weapons.each {|weapon| puts weapon.name}
	end
end

class Weapon
	attr_accessor 'name','price'
	def initialize(name, owner, price = 0)
		self.name = name
		self.price = price
		@owner = owner

		owner.weapons << self
	end
end

# james = Spy.new 'James Bond'
# jason = Spy.new 'Jason Bourne' 

# jason.add_weapon 'Axe'
# james.add_weapon 'Knife', 10
# james.add_weapon 'Makarov pistol', 110
# jason.show_weapons
# james.show_weapons
