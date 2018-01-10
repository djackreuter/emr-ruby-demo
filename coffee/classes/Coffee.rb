# Coffee Class
class Coffee
  attr_accessor :roast, :sugar, :cream, :size, :price

  # check if variables are nil
  def incomplete?
    roast.nil? || sugar.nil? || cream.nil? || size.nil?
  end

  # prompt user for input to questions
  def next_question
    if roast.nil?
      "What roast would you like? #{roast_options.join(', ')}"
    elsif sugar.nil?
      "How many sugars would you like? #{sugar_options.join(', ')}"
    elsif cream.nil?
      "Would you like any cream? #{cream_options.join(', ')}"
    elsif size.nil?
      "What size would you like? #{size_options.join(', ')}"
    else
      "Sorry, I didn't quite get that "
    end
  end

  # take answers from user and store in variables
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

  # set possible options for roast, sugar, cream, and size
  def roast_options
    @roast_options ||= %w[light regular dark]
  end

  def sugar_options
    @sugar_options ||= %w[0 1 2]
  end

  def cream_options
    @cream_options ||= %w[yes no]
  end

  def size_options
    @size_options ||= %w[small medium large]
  end

  # set price for coffee based on selections
  def coffee_price
    if self.size == 'small'
      self.price = 3.99
    end
    if self.size == 'medium'
      self.price = 4.79
    end
    if self.size == 'large'
      self.price = 6.99
    end
    if self.sugar == '1' || '2'
      self.price += 0.25
    end
    if self.cream == 'yes'
      self.price += 0.75
    end
  end

  # text to display based on user selection
  def description
    if cream == 'yes'
      puts "You have a #{size} #{roast} roast coffee with cream and #{sugar} sugar Your total is #{price}"
    else
      puts "You have a #{size} #{roast} roast coffee with #{cream} cream and #{sugar} sugar.  Your total is #{price}."
    end
  end
end
