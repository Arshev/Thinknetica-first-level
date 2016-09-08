require_relative 'modules'
require_relative 'train'
require_relative 'route'
require_relative 'station'
require_relative 'carriage'
require_relative 'cargo_train'
require_relative 'passenger_train'
require_relative 'cargo_carriage'
require_relative 'passenger_carriage'
require_relative 'Acessors'
require_relative 'Validation'

station1 = Station.new('Station 1')
station2 = Station.new('Station 2')

cargo_train = CargoTrain.new('777-FH')
pass_train = PassengerTrain.new('888-KL')

cargo_carriage1 = CargoCarriage.new(100)
cargo_carriage2 = CargoCarriage.new(100)
cargo_carriage3 = CargoCarriage.new(100)

pass_carriage1 = PassengerCarriage.new(40)
pass_carriage2 = PassengerCarriage.new(40)

route1 = Route.new(station1, station2)
route2 = Route.new(station1, station2)

cargo_train.add_carriage(cargo_carriage1)
cargo_train.add_carriage(cargo_carriage2)
cargo_train.add_carriage(cargo_carriage3)

pass_train.add_carriage(pass_carriage1)
pass_train.add_carriage(pass_carriage2)

cargo_train.set_route(route1)
pass_train.set_route(route2)

station1.arrival_train(cargo_train, cargo_train.type)
station1.arrival_train(pass_train, pass_train.type)



# stations = Station.all

# stations.each do |station|
#   station.block_trains do |train|
#     puts "Number train: #{train.number_train},
#           type: #{train.type_train},
#           number carriage: #{train.number_carriage}"
#   end
# end

# stations.each do |station|
#   station.block_trains do |train|
#     train.block_carriages do |carriage|
#       puts "Number carriage: #{carriage.number},
#             Type: #{carriage.type}, 
#             Free: #{carriage.free_volume if carriage.type == 'Cargo'}#{carriage.free_place if carriage.type == 'Passenger'},
#             Occupied: #{carriage.occupied_volume if carriage.type == 'Cargo'}
#             #{carriage.occupied_place if carriage.type == 'Passenger'}"
#     end
#   end
# end
