require 'Coffee_Class.rb'
# transaction class for coffee
class Transaction
  extend Coffee

  attr_accessor :size, :payment

  def initialize(size, payment)
    @size = size
    @payment = payment
  end

  def coffee_price
    if @size == 'small'
      @price = 3.95
      puts @price
    end
    if @size == 'medium'
      @price = 4.75
      puts @price
    end
    if @size == 'large'
      @price = 6.95
      puts @price
    end
  end

  def prompt
    if coffee.incomplete?
      puts coffee.next_question
      gets.chop
    else
      puts coffee.description
    end
  end

  def order_total
    puts "Your #{@size} coffee comes to #{@price}"
  end

end

total = Transaction.new('large', nil)

total.coffee_price

puts total.order_total