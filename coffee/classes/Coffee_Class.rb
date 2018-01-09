# Coffee Class
class Coffee
  attr_accessor :size, :addons

  def initialize(size, addons)
    @size = size
    @addons = addons
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

  def optional_addons
    #
  end

  def order_total
    puts "Your #{@size} coffee comes to #{@price}"
  end
end

cust_order = Coffee.new('large', nil)

cust_order.coffee_price

puts cust_order.order_total
