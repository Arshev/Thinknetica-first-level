class Station
  @@station_all = []

  def initialize(name_station)
    @name_station = name_station
    @trains = {}
    validate!
    @@station_all << self
  end

  def valid?
    validate!
  rescue
    false
  end

  def block_trains
    @trains.each_key { |train| yield(train) }
  end

  def self.all
    @@station_all
  end

  def arrival_train(number_train, type_train)
    @trains[number_train] = type_train
  end

  def list_trains_in_station
    @trains.keys.each { |train| puts train }
  end

  def list_trains_type(type_train)
    sort_trains = @trains.select { |_number_train, type| type == type_train }
    sorted_trains = sort_trains.keys.each { |train| puts train }
  end

  def departure_train(number_train)
    @trains.delete(number_train)
    puts "Train #{number_train} departed"
  end

  protected

  def validate!
    raise 'An empty value!' if @name_station.nil?
    raise 'No string!' if @name_station.class != String
    raise 'Name is too short!' if @name_station.length < 3
    true
  end
end
