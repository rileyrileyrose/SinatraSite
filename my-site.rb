require "sinatra"
require './lib/unicorn.rb'

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
		@uni = Unicorn.new
		@uni.name = @uni.give_name
		@intro = @uni.introduce
		@tacocorn = random_tacocorn
		erb :tacocorn_creator
	end

	post '/named_tacocorn' do
		@title = "Your TacoCorn"
	  @name =  params[:name]
	  @uni = Unicorn.new
	  @uni.name = @name
	  @tacocorn = random_tacocorn
	  erb :named_tacocorn
	end

end

