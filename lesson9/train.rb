class Train
  include Company

  attr_accessor :speed
  attr_accessor :route
  attr_accessor :carriage
  attr_accessor :type_train
  attr_accessor :type
  attr_accessor :number_train

  @@trains = {}

  TYPE = { cargo: 'Cargo', passenger: 'Passenger' }.freeze

  NUMBER_FORMAT = /^\w{3}\W?\w{2}$/i

  def initialize(number_train, station_index = 0)
    @number_train = number_train
    @station_index = station_index
    @speed = 0
    @carriage = []
    @@trains[number_train] = self
  end

  def block_carriages
    @carriage.each { |carriage| yield(carriage) }
  end

  def self.find(number_train)
    @@trains[number_train]
  end

  def start(speed)
    self.speed = speed
  end

  def current_speed
    puts "Current speed: #{speed}"
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
    route.stations[@station_index + 1]
  end

  def prev_station
    route.stations[@station_index - 1]
  end

  def add_carriage(carriage)
    if speed > 0 || carriage.type != @type_train
      puts "Can't add carriage: current speed: #{speed} type of train: #{@type_train}"
    else
      add_carriage!(carriage)
    end
  end

  def del_carriage(carriage)
    if speed > 0
      puts "Train start! Can't unhook carriage"
    else
      del_carriage!(carriage)
    end
  end

  private

  # Добавлять/Удалять вагоны напрямую из интерфеса нельзя

  def add_carriage!(carriage)
    self.carriage << carriage
  end

  def del_carriage!(carriage)
    carriage.delete_at(-1)
  end

end
