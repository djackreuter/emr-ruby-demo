require 'minitest/autorun'
require '../Coffee.rb'

# unit test for coffee application
class CoffeeTest < Minitest::Test

  def setup
    coffee = Coffee.new
    @valid_roast = 'dark'
    @valid_sugar = '0'
    @valid_cream = 'yes'
    @valid_size = 'small'
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

end