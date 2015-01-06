require 'sinatra'

get '/' do 
  @name = ["Kitty","Kat","Kit"].sample
  erb :index
end

get '/secret' do
  'This is a secret page!'
end

get '/hello' do
  @visitor = params[:name]
  erb :index
end