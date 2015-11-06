require './lib/taco.rb'

class Unicorn
	attr_reader :horn_size
	attr_accessor :name, :hunger

	def initialize
		@name = ""
		@horn_size = rand(2..10)
		@hunger = @horn_size
	end

	def introduce
		@intro = "Meet #{name}, the TacoCorn. \n#{name} loves to eat tacos."
	end

	def self.introduce_new
		@@unicorn = Unicorn.new
		return @@unicorn.introduce
	end

	def give_name
		names = ['Charlie', 'Pericles', 'Desmond', 'Scarlett', 'Janet', 'Gertrude', 'Apple', 'Onion', 'WaterfallRiverSparkle', 'Unitarded', 'Gregory', 'James', 'Bearasaurus', 'Desdemona', 'T-Rex']
		length = names.length - 1
		name = names[rand(0..length)]
	end
end

def random_tacocorn
	@taco_corns = ["hipster_tacocorn.png", "taco_unicorn.jpeg", "hipster_tacocorn2.jpeg", "tacocorn1.jpeg", "brony.jpeg", "tacocorn2.jpeg", "tacocorn3.jpeg"]
	length = @taco_corns.length - 1
	return @taco_corns[rand(0..length)]
end