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

# proc
multiply_by10 = proc { |n| n * 10 }

puts multiply_by10.call(4)

# single line lambda
greeting = ->(name) { "Hello, #{name}" }

puts greeting.call('Jack')

# multiline lambda
some_number = lambda do |a, b|
  num1 = a * 5
  num1 - b / 2
end

puts some_number.call(4, 5)

# namespacing demo
module One
  # class for module one
  class Foo
    def bar
      puts 'foobar'
    end
  end
end

module Two
  # class for module two
  class Foo
    def bar
      puts 'bar of foo'
    end
  end
end

mod1 = One::Foo.new
mod2 = Two::Foo.new

puts mod1.bar
puts mod2.bar

# struct
Person = Struct.new(:name, :location) do
  def person_info
    "#{name} lives in #{location}"
  end
end

person1 = Person.new('Jack', 'Albuquerque')

puts person1.person_info
