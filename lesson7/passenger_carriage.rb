class PassengerCarriage < Carriage

  def initialize(seats)
    @type = 'Passenger'
    @seats = seats
    @places = seats
  end

  def take_place
    @places -= 1
  end

  def occupied_place 
    @occupied_place = @seats - @places
  end

  def free_place 
    @free_place = @seats - @occupied_place
  end

end  