require 'sinatra'

get '/' do
  'Hello world!'
end

get '/about/:name' do
  @me = params[:name]
  "A little about #{@me.reverse.capitalize}!"
end

get '/more/*' do
  @parameters = params[:splat]
  params.inspect
end