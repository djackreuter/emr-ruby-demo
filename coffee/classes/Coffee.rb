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
      "What roast would you like? #{roast_options.join(', ')}"
    elsif sugar.nil?
      "How many sugars would you like? #{sugar_options.join(', ')}"
    elsif cream.nil?
      "How many creams would you like? #{cream_options.join(', ')}"
    elsif size.nil?
      "Would you like small, medium, or large? #{size_options.join(', ')}"
    else
      "Sorry, I didn't quite get that "
    end
  end

  def process_input(input)
    if roast_options.include?(input)
      self.roast = input
    elsif sugar_options.include?(input)
      self.sugar = input
    elsif cream_options.include?(input)
      self.cream = input
    elsif size_options.include?(input)
      self.size = input
    end
  end

  def roast_options
    @roast_options ||= ['light', 'regular', 'dark']
  end

  def sugar_options
    @sugar_options ||= ['0', '1', '2']
  end

  def cream_options
    @cream_options ||= ['0', '1', '2']
  end

  def size_options
    @size_options ||= ['small', 'medium', 'large']
  end

  def description
    puts "You have a #{@size_options} #{@roast_options} roast coffee with #{@cream_options} and #{@sugar_options}"
  end
end
