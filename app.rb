require 'bundler'
Bundler.require
require_relative 'config/environment'

class App < Sinatra::Base
  configure do
    set :public_folder, 'sweet_project/css'
    set :views, 'sweet_project/views'
  end
  
get '/' do
  erb :index
end

get '/city' do
  erb :city
end

get '/la' do
  erb :la
end

get '/nyc' do
  erb :nyc
end

get '/stl' do
  erb :stl
end

end