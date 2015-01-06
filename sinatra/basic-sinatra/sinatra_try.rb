require 'sinatra'

get '/' do
	"<h4>Hello and welcome!</h4>
	<p>This is a tryout page for sinatra</p>
	Please click <a href='/form'>here</a> to fill out the form!"
end

get "/form" do
	"<form action='/form' method='post'>
	<input type='text' name='the_data'>
	<input type='submit'>
	</form>"
end

post "/form" do
	"You submitted #{params[:the_data].inspect}"
end
