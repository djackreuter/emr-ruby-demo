require 'erb'

# build multiplication class
class Multiply
  def read
    file = File.open('./templates/multiplication.erb')
    contents = file.read
  end

  def build
    x = (1..12)
    y = (1..12)
    puts ERB.new("#{read}", nil, '>').result(binding)
  end
end
