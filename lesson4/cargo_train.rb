class CargoTrain < Train

  def initialize(number_train, station_index)
      super
      @type_train = 'Cargo'
  end 

end