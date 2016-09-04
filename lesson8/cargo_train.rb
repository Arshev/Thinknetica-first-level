class CargoTrain < Train
  def initialize(number_train, station_index = 0)
    super
    @type_train = 'Cargo'
  end
end
