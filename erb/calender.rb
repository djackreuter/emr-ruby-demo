require 'erb'
require 'date'

# build multiplication class
class Calender
  attr_accessor :beg_of_month, :end_of_month

  def read
    file = File.open('./templates/calender.erb')
    contents = file.read
  end

  def build
    @beg_of_month = Date.civil(gets.to_i, gets.to_i, 1)
    @end_of_month = Date.civil(gets.to_i, gets.to_i, -1)
    puts ERB.new("#{read}", nil, '>').result(binding)
  end
end
