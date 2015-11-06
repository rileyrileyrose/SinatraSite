require "sinatra"
require './lib/unicorn.rb'
require './lib/database.rb'

class MySite < Sinatra::Base

	def current_db 
		@curr_db ||= TacoCorn::Database.new("taco_corns.db")
	end

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
	  @name = @uni.name
	  @hunger = @uni.hunger
	  erb :named_tacocorn
	end

end

