require 'erb'

# build multiplication class
class Multiply
  def read
    file = File.open('./templates/multiplication.erb')
    contents = file.read
  end

  def build
    puts ERB.new("#{read}", nil, '>').result(binding)
  end
end
