require_relative 'train'
require_relative 'route'
require_relative 'station'
require_relative 'carriage'
require_relative 'passenger_train'
require_relative 'cargo_train'
require_relative 'cargo_carriage'
require_relative 'passenger_carriage'


train = Train.new(3, 'Passenger', 5, 1)
route = Route.new('Station start', 'Station last')
stations = Station.new('Station 1')






# puts '_________________________________'

# train.start(50)
# train.number_train
# train.current_speed
# train.add_carriage(-1)
# train.number_carriage
# train.type(0)

# puts '_________________________________'

 # route.add_station('Station 2')
 # route.add_station('Station 3')
# route.delete_station('Station 3')
# route.look_station

# puts '_________________________________'

# station.arrival_train(123,'Cargo')
# station.arrival_train(456, 'Passenger')
# station.arrival_train(789, 'Cargo')
# station.departure_train(789)
# station.list_trains_in_station
# station.list_trains_type('Cargo')


 # route.stations
train.set_route(['Station Start', 'Station Last'])
 train.current_station(stations)
 train.prev_station
 train.current_station(stations)