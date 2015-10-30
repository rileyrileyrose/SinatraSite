require "sinatra"

class Taco
end

class Unicorn
	attr_reader :name, :horn_size, :hunger

	def initialize
		@name = give_name
		@horn_size = rand(2..10)
		@hunger = @horn_size
	end

	def introduce
		@intro = "Meet #{name}, the TacoCorn! \n#{name} loves to eat tacos."
	end

	def self.introduce_new
		@@unicorn = Unicorn.new
		return @@unicorn.introduce
	end

	def give_name
		names = ['Charlie', 'Pericles', 'Desmond', 'Scarlett', 'Janet', 'Gertrude']
		length = names.length - 1
		name = names[rand(0..length)]
	end
end

def random_tacocorn
	@taco_corns = ["hipster_tacocorn.png", "taco_unicorn.jpeg"]
	length = @taco_corns.length - 1
	return @taco_corns[rand(0..length)]
end


class MySite < Sinatra::Base

	get "/" do
		@title = "One Taco to Rule Them All"
		erb :index
	end

	get "/index" do
		@title = "One Taco to Rule Them All"
		erb :index
	end

	get "/taco_corn" do
		@title = "TacoCorns Unite!"
		erb :taco_corn
	end

	get "/blog" do
		@title = "My Ideas are Important."
		erb :blog
	end

	get "/tacocorn_creator" do
		@title = "TacoCorn Creator"
		@uni = Unicorn.introduce_new
		@tacocorn = random_tacocorn
		erb :tacocorn_creator
	end
end

