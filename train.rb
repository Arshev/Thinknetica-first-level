class Train

  attr_accessor :speed
  attr_accessor :route

  TYPE = ['Cargo', 'Passenger']

  def initialize(number_train, type_train, number_carriage, station_index)
    @number_train = number_train
    @type_train = type_train
    @number_carriage = number_carriage
    @station_index = station_index
  end

  def type(index)
    @type_train = Train::TYPE[index]
    puts "Type of train: #{@type_train}"
  end

  def start(speed)
    self.speed = speed
  end

  def current_speed
    puts "Current speed: #{self.speed}"
  end

  def stop
    self.speed = 0
  end

  def number_carriage
    @number_carriage
  end

  def add_carriage(quantity)
    @number_carriage += quantity if self.speed == 0 && quantity <= 1 && quantity >= -1
  end 

  def set_route(route)
    self.route = route
  end  

  def current_station(route)
    route[@station_index]
  end

  def next_station
   self.route.stations[@station_index + 1]
  end 

  def prev_station
    self.route.stations[@station_index - 1]
  end 


end  

