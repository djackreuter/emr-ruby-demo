require './Coffee.rb'
# transaction class for coffee
class Transaction
  attr_accessor :coffee

  def initialize
    self.coffee = Coffee.new
  end

  # prompt the user with more questions if incomplete method is true
  def prompt
    if self.coffee.incomplete?
      puts self.coffee.next_question
      self.coffee.process_input(gets.chomp)
    end
  end
end

transaction = Transaction.new

# as long as incomplete method is true, keep prompting for user input
while transaction.coffee.incomplete?
  puts transaction.prompt
end

# call coffee_price method and show coffee discription
transaction.coffee.coffee_price
puts transaction.coffee.description