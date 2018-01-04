# User class for EMR Ruby Demo
class Vehicle
  attr_accessor :id, :year, :make, :model, :color, :type

  # class variable
  @@num_vehicles = 5

  # class method
  def self.find_vehicle(make)
    puts "Located all #{make}'s on record"
  end

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
    "Year: #{@year} | Make: #{@make} | Model: #{@model}"
  end

  # memoization example
  def cars
    @cars ||= count_cars
  end

  def count_cars
    sleep 1
    5
  end

  # memoization with arguments
  # keep a seperate cache for all the arguments being passed in
  def new_cars(*args)
    # set @new_cars to a new hash so args can be passed in as a key
    @new_cars ||= {}
    @new_cars[args] ||= add_cars(*args)
  end

  def add_cars(num)
    sleep 0.5
    5 + num
  end

  private :count_cars, :add_cars
end

veh1 = Vehicle.new(1, 2000, 'BMW', '740il', 'Black', 'Sedan')
veh2 = Vehicle.new(2, 2017, 'Nissan', '350z', 'Red', 'Coupe')
veh3 = Vehicle.new(3, 2018, 'Mercedes', 'S63 AMG', 'Black', 'Sedan')
veh4 = Vehicle.new(4, 2015, 'BMW', 'M4', 'Black', 'Coupe')
veh5 = Vehicle.new(5, 2000, 'Ford', 'F150', 'Orange', '4WD')

puts veh1.make

puts veh1.vehicle_info
puts veh2.vehicle_info
puts veh3.vehicle_info
puts veh4.vehicle_info
puts veh5.vehicle_info

puts Vehicle.find_vehicle('bmw')

puts veh1.cars
puts veh1.cars

puts veh1.new_cars(3)
