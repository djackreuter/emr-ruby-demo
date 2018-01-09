require './Coffee.rb'
# transaction class for coffee
class Transaction
  attr_accessor :coffee

  def initialize
    self.coffee = Coffee.new
  end

  # def coffee_price
  #   if @size == 'small'
  #     @price = 3.95
  #     puts @price
  #   end
  #   if @size == 'medium'
  #     @price = 4.75
  #     puts @price
  #   end
  #   if @size == 'large'
  #     @price = 6.95
  #     puts @price
  #   end
  # end

  def prompt
    if self.coffee.incomplete?
      puts Coffee.new.next_question
      gets.chop
    else
      puts Coffee.new.description
    end
  end

  self.coffee.process_input('gets.chomp')

end

transaction = Transaction.new('medium')
coffee = Coffee.new

puts transaction.prompt

puts coffee.description
