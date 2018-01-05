# array as params
def foo(num1, num2)
  num1 % num2
end

bar = [100, 24]
# pass array using splat
puts foo(*bar)

# params to array
def bizz(x, y, z)
  [x * x, y - y, z + x]
end

puts bizz(4, 3, 1)

# block as param
def my_method
  puts 'method called'
  yield(1)
  puts 'back to method'
end

my_method do |e|
  puts "block called #{e} time"
end
