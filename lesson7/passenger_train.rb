class PassengerTrain < Train

  def initialize(number_train, station_index = 0)
      super
      @type_train = 'Passenger'
  end 

end