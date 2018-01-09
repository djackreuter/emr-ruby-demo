# Coffee Class
class Coffee
  attr_accessor :roast, :sugar, :cream, :size

  # def initialize(roast, addons)
  #   @roast = roast
  #   @addons = addons
  # end

  def incomplete?
    roast.nil? || sugar.nil? || cream.nil? || size.nil?
  end

  def next_question
    if roast.nil?
      'What roast would you like? '
    elsif sugar.nil?
      'Would you like any sugar in that? '
    elsif cream.nil?
      'Would you like any cream? '
    elsif size.nil?
      'What size would you like? '
    else
      "Sorry, I didn't quite get that "
    end
  end

  def process_input(input)
    if roast.nil?
      roast = input

  end

  def order
    puts "Here is your #{@roast} roast coffee with "
  end

end

cust_order = Coffee.new('regular', 'cream')

cust_order.num_cream(2)

cust_order.num_sugar(0)

puts cust_order.order
