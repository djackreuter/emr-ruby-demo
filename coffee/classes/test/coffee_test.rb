require 'minitest/autorun'
require '../Coffee.rb'

# unit test for coffee application
class CoffeeTest < Minitest::Test

  def setup
    @valid_roast = 'dark'
    @valid_sugar = '1'
    @valid_cream = 'yes'
    @valid_size = 'small'
    @valid_size_sm = 'small'
    @valid_size_md = 'medium'
    @valid_size_lg = 'large'
    @valid_price_sm = 3.99
    @valid_price_md = 4.79
    @valid_price_md_sugar = 5.04
    @valid_price_lg = 6.99
    @valid_price_lg_sugar = 7.74
  end

  def test_incomplete?
    coffee = Coffee.new
    assert_equal true, coffee.incomplete?
  end

  def test_next_question
    coffee = Coffee.new
    coffee.roast = @valid_roast
    coffee.sugar = @valid_sugar
    coffee.cream = @valid_cream
    coffee.size = @valid_size
    assert_equal "Sorry, I didn't quite get that", coffee.next_question
  end

  def test_process_input
    coffee = Coffee.new
    coffee.roast = @valid_roast
    coffee.sugar = @valid_sugar
    coffee.cream = @valid_cream
    coffee.size = @valid_size
    assert_equal @valid_roast, coffee.roast
    assert_equal @valid_sugar, coffee.sugar
    assert_equal @valid_cream, coffee.cream
    assert_equal @valid_size, coffee.size
  end

  def test_roast_options
    coffee = Coffee.new
    assert_equal %w[light regular dark], coffee.roast_options
  end

  def test_sugar_options
    coffee = Coffee.new
    assert_equal %w[0 1 2], coffee.sugar_options
  end

  def test_cream_options
    coffee = Coffee.new
    assert_equal %w[yes no], coffee.cream_options
  end

  def test_size_options
    coffee = Coffee.new
    assert_equal %w[small medium large], coffee.size_options
  end

  def test_coffee_price
    # small
    coffee = Coffee.new
    coffee.size = @valid_size_sm
    coffee.coffee_price
    assert_equal @valid_price_sm, coffee.price

    # medium
    coffee.size = @valid_size_md
    coffee.coffee_price
    assert_equal @valid_price_md, coffee.price

    # large
    coffee.size = @valid_size_lg
    coffee.coffee_price
    assert_equal @valid_price_lg, coffee.price

    # w/ sugar
    coffee.size = @valid_size_md
    coffee.sugar = @valid_sugar
    coffee.coffee_price
    assert_equal @valid_price_md_sugar, coffee.price

    # w/ cream
    coffee.size = @valid_size_lg
    # set sugar from previous test to 0
    coffee.sugar = '0'
    coffee.cream = @valid_cream
    coffee.coffee_price
    assert_equal @valid_price_lg_sugar, coffee.price
  end

  def test_description
    coffee = Coffee.new
    coffee.roast = @valid_roast
    coffee.size = @valid_size
    coffee.cream = @valid_cream # cream 'yes'
    coffee.sugar = @valid_sugar
    coffee.coffee_price
    @valid_price = coffee.price
    assert_equal "You have a #{@valid_size} #{@valid_roast} roast coffee with cream and #{@valid_sugar} sugar. Your total is #{@valid_price}", coffee.description
    # set coffee cream from previous test to no
    @valid_cream = 'no'
    coffee.cream = 'no'
    coffee.coffee_price
    @valid_price = coffee.price
    assert_equal "You have a #{@valid_size} #{@valid_roast} roast coffee with #{@valid_cream} cream and #{@valid_sugar} sugar. Your total is #{@valid_price}.", coffee.description
  end
end
