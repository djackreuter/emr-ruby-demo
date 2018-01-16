require 'erb'
require 'sinatra'

# build multiplication class
class Multiply

  def self.run
    initialize = Multiply.new
    initialize.build
  end

  def read
    File.read('./templates/multiplication.erb')
  end

  def build
    x = (1..12)
    y = (1..12)
    puts ERB.new("#{read}", nil, '>').result(binding)
  end
end
