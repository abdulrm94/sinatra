require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do 
  'hello'
end

get '/secret' do
  'James is a gent and a boss'
end

get '/break' do
  'time for a break?'
end 

get '/random-cat' do
  @name = ["Amigo", "Misty", "Almond"].sample 
  erb(:index)
end

get '/named-cat' do
  p params[:name]
  #||= "stranger" <<< this is how to pass a default value to a parameter
  @name = params[:name] ||= "stranger"
  erb(:index)
end