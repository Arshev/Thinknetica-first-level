class Route

  attr_accessor :stations
  
  def initialize(start_station,last_station)
    @stations = [start_station,last_station]
    validate!
  end

  def valid?
    validate!
  rescue
    false
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

protected

  def validate!
    raise "An empty value!" if @stations.empty?
    raise "Pass an object of another class!" if @stations.first.class != Station
    true
  end  

end 