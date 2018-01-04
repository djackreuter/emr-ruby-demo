# User class for EMR Ruby Demo
class Vehicle
  attr_accessor :id, :year, :make, :model, :color, :type
  # instance constructor
  def initialize(id, year, make, model, color, type)
    @id = id
    @year = year
    @make = make
    @model = model
    @color = color
    @type = type
  end

  # instance method
  def vehicle_info
    "Year: #{@year}, Make: #{@make}, Model: #{@model}"
  end
end

veh1 = Vehicle.new(1, 2000, 'BMW', '740il', 'black', 'sedan')

puts veh1.make

puts veh1.vehicle_info
