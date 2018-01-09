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
    elsif sugar_options.includes?(input)
      self.sugar = input
    elsif cream.nil?
      cream = input
    elsif size.nil?
      size = input
    end
  end

  def sugar_options
    @sugar_options ||= ['0', '1', '2']
  end

  def description
    puts "You have a #{@size} #{@roast} roast coffee with #{@cream} and #{@sugar}"
  end
end
