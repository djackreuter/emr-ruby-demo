# transaction class for coffee
class Transaction
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

  def order_total
    puts "Your #{@size} coffee comes to #{@price}"
  end

end