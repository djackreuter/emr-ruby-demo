# module available to the class
module VehicleClassification
  def veh_class
    puts 'Passenger Cars'
  end
end

# module available to instance of class
module VehicleMiscInfo
  def other_info
    "Id: #{id}, Type: #{type}, Color: #{color}"
  end
end
