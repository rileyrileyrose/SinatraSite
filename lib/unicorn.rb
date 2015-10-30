require './lib/taco.rb'

class Unicorn
	attr_reader :name, :horn_size, :hunger

	def initialize
		@name = give_name
		@horn_size = rand(2..10)
		@hunger = @horn_size
	end

	def introduce
		puts "Meet #{name}, the TacoCorn!"
		puts "#{name} loves to eat tacos."
	end

	def self.introduce_new
		unicorn = Unicorn.new
		unicorn.introduce
	end

	def give_name
		names = ['Charlie', 'Pericles', 'Desmond', 'Scarlett', 'Janet', 'Gertrude']
		length = names.length
		name = names[rand(0..length)]
	end

	def eat(item)
		if item.class == Taco
			puts "Boy, do I love Tacos!"
			@hunger -= 1
		else puts "You call that food? Where da tacos at?"
		end
	end
end