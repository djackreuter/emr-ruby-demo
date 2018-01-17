require 'sinatra'
require 'date'
require_relative 'mailer.rb'

get '/' do
  erb :index
end

get '/multiply' do
  @x = (1..12)
  @y = (1..12)
  erb :multiplication
end

get '/calender' do
  @beg_of_month = Date.civil(2018, 1, 1)
  @end_of_month = Date.civil(2018, 1, -1)
  erb :calender
end

post '/send' do
  @mail = Mailer.send_mail(params)
  erb :success
end
