require "sinatra"

class MySite < Sinatra::Base

  get "/" do
  	erb :index
  end

  get "/taco_corn" do
  	erb :taco_corn
  end

  get "/blog" do
  	erb :blog
  end

  get "/index" do
  	erb :index
  end

end
