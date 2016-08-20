# Имеет номер (произвольная строка) и тип (грузовой, пассажирский) и количество вагонов, эти данные указываются при создании экземпляра класса
# Может набирать скорость
# Может показывать текущую скорость
# Может тормозить (сбрасывать скорость до нуля)
# Может показывать количество вагонов
# Может прицеплять/отцеплять вагоны (по одному вагону за операцию, метод просто увеличивает или уменьшает количество вагонов). Прицепка/отцепка вагонов может осуществляться только если поезд не движется.
# Может принимать маршрут следования (объект класса Route)
# Может перемещаться между станциями, указанными в маршруте.
# Показывать предыдущую станцию, текущую, следующую, на основе маршрута

require_relative 'lesson3_2.rb'


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

end

