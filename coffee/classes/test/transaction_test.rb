require 'minitest/autorun'
# require '../Coffee.rb'
require '../Transaction.rb'

# unit test for Transaction class
class TransactionTest < Minitest::Test
  def setup
    @valid_roast = 'dark'
    @valid_sugar = '0'
    @valid_cream = 'no'
    @valid_size = 'medium'
  end

  def test_prompt
    transaction = Transaction.new
    assert_equal 'light', transaction.prompt
  end

  def test_prompt_false
    transaction = Transaction.new
    transaction.coffee.roast = @valid_roast
    transaction.coffee.sugar = @valid_sugar
    transaction.coffee.cream = @valid_cream
    transaction.coffee.size = @valid_size
    assert_nil transaction.prompt
  end
end
