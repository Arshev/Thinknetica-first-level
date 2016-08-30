class Route

  attr_accessor :stations
  attr_accessor :start_station
  attr_accessor :last_station

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
    raise "Name is too short!" if @stations[0].length < 3
    raise "Name is too short!" if @stations[1].length < 3
    true
  end  

end 