# Класс Station (Станция):
# Имеет название, которое указывается при ее создании
# Может принимать поезда (по одному за раз)
# Может показывать список всех поездов на станции, находящиеся в текущий момент
# Может показывать список поездов на станции по типу (см. ниже): кол-во грузовых, пассажирских
# Может отправлять поезда (по одному за раз, при этом, поезд удаляется из списка поездов, находящихся на станции).

class Station

  def initialize(name_station)
    @name_station = name_station
    @trains = {}
  end

  def arrival_train(number_train, type_train)
    @trains[number_train] = type_train
  end
  
  def list_trains_in_station
    sorted_trains = @trains.keys.each {|train| puts train}
    puts "Trains in the station: #{sorted_trains}"  
  end

  def list_trains_type(type_train)
    sort_trains = @trains.select{|number_train, type| type == type_train}
    sorted_trains = sort_trains.keys.each {|train| puts train}
    puts "Sorted trains in the station: #{sorted_trains}"
  end

  def departure_train(number_train)
    @trains.delete(number_train)
    puts "Train #{number_train} departed"
  end  

end

# Класс Route (Маршрут):
# Имеет начальную и конечную станцию, а также список промежуточных станций. Начальная и конечная станции указываютсся при создании маршрута, а промежуточные могут добавляться между ними.
# Может добавлять промежуточную станцию в список
# Может удалять промежуточную станцию из списка
# Может выводить список всех станций по-порядку от начальной до конечной


class Route < Station
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
    @stations.each do |station|
      puts station
    end  
  end
end

# Класс Train (Поезд):
# Имеет номер (произвольная строка) и тип (грузовой, пассажирский) и количество вагонов, эти данные указываются при создании экземпляра класса
# Может набирать скорость
# Может показывать текущую скорость
# Может тормозить (сбрасывать скорость до нуля)
# Может показывать количество вагонов
# Может прицеплять/отцеплять вагоны (по одному вагону за операцию, метод просто увеличивает или уменьшает количество вагонов). Прицепка/отцепка вагонов может осуществляться только если поезд не движется.
# Может принимать маршрут следования (объект класса Route)
# Может перемещаться между станциями, указанными в маршруте.
# Показывать предыдущую станцию, текущую, следующую, на основе маршрута

class Train < Route

  TYPE = ['Cargo', 'Passenger']
  attr_accessor :speed

  def initialize(number_train, type_train, number_carriage)
    @number_train = number_train
    @type_train = type_train
    @number_carriage = number_carriage
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

  def current_station

  end 

  def next_station

  end
  
  def prev_station

  end  

end






train = Train.new(3, 'Passenger', 5)
route = Route.new('Station start', 'Station last')
station = Station.new('Station 1')

train.start(50)
train.number_train
train.current_speed
train.add_carriage(-1)
train.number_carriage
train.type(0)


route.add_station('Station 2')
route.add_station('Station 3')
route.delete_station('Station 3')
route.look_station

station.list_trains_in_station


station.arrival_train(123,'Cargo')
station.arrival_train(456, 'Passenger')
station.arrival_train(789, 'Cargo')
station.departure_train(789)
station.list_trains_in_station
station.list_trains_type('Cargo')