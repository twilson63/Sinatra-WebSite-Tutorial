require 'rubygems'
require 'sinatra'

get '/' do
  @title = 'Awesome Site'
  erb :index
end

get '/about' do
  @title = 'About Awesome Site'
  erb :about
end



