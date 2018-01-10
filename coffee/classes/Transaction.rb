require './Coffee.rb'
# transaction class for coffee
class Transaction
  attr_accessor :coffee

  def initialize
    self.coffee = Coffee.new
  end

  def prompt
    if self.coffee.incomplete?
      puts self.coffee.next_question
      self.coffee.process_input(gets.chomp)
    end
  end
end

transaction = Transaction.new
# coffee = Coffee.new

# self.coffee.process_input('gets.chomp')

while transaction.coffee.incomplete?
  puts transaction.prompt
end

# puts self.coffee.description
transaction.coffee.coffee_price
puts transaction.coffee.description