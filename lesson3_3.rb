# Имеет название, которое указывается при ее создании
# Может принимать поезда (по одному за раз)
# Может показывать список всех поездов на станции, находящиеся в текущий момент
# Может показывать список поездов на станции по типу (см. ниже): кол-во грузовых, пассажирских
# Может отправлять поезда (по одному за раз, при этом, поезд удаляется из списка поездов, находящихся на станции).

require_relative 'lesson3_1.rb'


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

station = Station.new('Station 1')
station.arrival_train(123,'Cargo')
station.arrival_train(456, 'Passenger')
station.arrival_train(789, 'Cargo')
station.departure_train(789)
station.list_trains_in_station
station.list_trains_type('Cargo')