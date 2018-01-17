require 'sinatra'
require_relative 'lib/calender.rb'

get '/multiply' do
  @x = (1..12)
  @y = (1..12)
  erb :multiplication
end

