require 'erb'

# build multiplication class
class Multiply
  def read
    file = File.open('./templates/multiplication.erb')
    contents = file.read
  end

  def build
    ERB.new("#{read}").result(binding)
  end
end
