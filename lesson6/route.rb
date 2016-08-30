class Route

  attr_accessor :stations

  def initialize(start_station,last_station)
    @stations = [start_station,last_station]
  end

  def add_station(station)
    @stations.insert(-2,station)
  end 

  def delete_station(station)
    @stations.delete(station)
  end

  def look_station
    x = 0
    @stations.each do |station|
      x += 1
    puts "#{x}. #{station}"
    end  
  end
end 