require_relative 'modules'
require_relative 'train'
require_relative 'route'
require_relative 'station'
require_relative 'carriage'
require_relative 'cargo_train'
require_relative 'passenger_train'
require_relative 'cargo_carriage'
require_relative 'passenger_carriage'

def programm
  puts 'Введите номер поезда формата 77F-7G:'
  number_train = gets.chomp.to_s
  puts 'Введите номер начальной станции 0 или 1'
  number_start_station = gets.chomp.to_i
  train = Train.new(number_train,number_start_station)
  puts "Вы создали поезд c номером #{number_train} и указали начальную станцию с номером #{number_start_station}"
end

attempt = 0
begin
  programm
  rescue RuntimeError => e
  #attempt += 1
  #retry if e
  puts "Error: #{e.inspect}"
end

