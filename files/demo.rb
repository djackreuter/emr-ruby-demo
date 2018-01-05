# array as params
def foo(num1, num2)
  num1 % num2
end

bar = [100, 24]

puts foo(*bar)
