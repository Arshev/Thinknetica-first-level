class Train

  include Company

  attr_accessor :speed
  attr_accessor :route
  attr_accessor :carriage
  attr_accessor :type_train
  attr_accessor :type

  @@number_train = 0

  TYPE = {cargo: 'Cargo', passenger: 'Passenger'}

  def initialize(number_train, station_index)
    @@number_train = number_train
    @station_index = station_index
    @speed = 0
    @carriage = []
    @@object = self
  end

  def self.find(number_train)
    number_train == @@number_train ? @@object : puts
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
    @carriage.count
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

  def add_carriage(carriage)
    if self.speed > 0 || carriage.type != @type_train
      puts "Can't add carriage: current speed: #{self.speed} type of train: #{@type_train}"
    else
      add_carriage!(carriage.type)
    end
  end

  def del_carriage(carriage)
    if self.speed > 0
      puts "Train start! Can't unhook carriage"
    else
      del_carriage!(carriage.type)
    end
  end

  private

  # Добавлять/Удалять вагоны напрямую из интерфеса нельзя

  def add_carriage!(carriage)
  self.carriage << carriage
  end

  def del_carriage!(carriage)
  self.carriage.delete_at(-1)
  end


end  

