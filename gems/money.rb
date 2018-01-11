# a simple ruby file using the Money gem
require 'money'

money = Money.new(100000, 'EUR')

puts money.currency.name
