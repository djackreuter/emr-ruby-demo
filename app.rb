require 'sinatra'
require_relative 'lib/calender.rb'

# Multiply = Multi::Multiply
# Main class for App
# class Main < Sinatra::Base
  # extend Multiply

  get '/multiply' do
    @x = (1..12)
    @y = (1..12)
    erb :multiplication
  end
# end
