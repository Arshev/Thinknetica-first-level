class Train

  TYPE = ['Cargo', 'Passenger']
  attr_accessor :speed
  attr_accessor :route

  def initialize(number_train, type_train, number_carriage, station_index)
    @number_train = number_train
    @type_train = type_train
    @number_carriage = number_carriage
    @station_index = station_index
  end

  def start(speed)
    self.speed = speed
    puts 'Train start!'
  end

  def stop
    self.speed = 0
    puts 'Train stop!'
  end

  def type(index)
    @type_train = Train::TYPE[index]
    puts "Type of train: #{@type_train}"
  end

  def number_train
    puts "Number train: #{@number_train}"
  end 

  def current_speed
    puts "Current speed: #{self.speed}"
  end

  def number_carriage
    puts "Number carriage: #{@number_carriage}"
  end

  def add_carriage(quantity)
    @number_carriage += quantity if self.speed == 0 && quantity <= 1 && quantity >= -1
  end 

  def set_route(route)
    self.route = route
  end  

  def current_station
    p self.route[@station_index]
  end

  def next_station
    @station_index += 1
  end 

  def prev_station
    @station_index -= 1
  end 

end