require 'erb'

# build multiplication class
class Calender
  def read
    file = File.open('./templates/calender.erb')
    contents = file.read
  end

  def build
    puts ERB.new("#{read}", nil, '>').result(binding)
  end
end