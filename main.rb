require_relative 'train'
require_relative 'route'
require_relative 'station'
require_relative 'carriage'
require_relative 'passenger_train'
require_relative 'cargo_train'
require_relative 'cargo_carriage'
require_relative 'passenger_carriage'


train = Train.new(3, 0, 5, 1)
route = Route.new('Station start', 'Station last')
stations = Station.new('Station 1')



