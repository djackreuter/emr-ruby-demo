require 'erb'
require 'date'

# build multiplication class
class Calender
  attr_accessor :beg_of_month, :end_of_month

  def self.run
    instance = Calender.new
    instance.cal_dates
    instance.build
  end

  def read
    File.read('./templates/calender.erb')
  end

  def cal_dates
    print 'Enter year: '
    @year = gets.to_i
    print 'Enter month (1 - 12): '
    @month = gets.to_i
  end

  def build
    @beg_of_month = Date.civil(@year, @month, 1)
    @end_of_month = Date.civil(@year, @month, -1)
    puts ERB.new("#{read}", nil, '>').result(binding)
  end
end
