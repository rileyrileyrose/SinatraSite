require "sinatra"

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

end
