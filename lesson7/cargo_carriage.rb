class CargoCarriage < Carriage

  def initialize(volume)
    @type = 'Cargo'
    @volume = volume
    @dif_volume = volume
  end 

  def take_volume(quantity)
    @dif_volume -= quantity
  end

  def occupied_volume 
    @occupied_volume = @volume - @dif_volume
  end

  def free_volume 
    @volume - @occupied_volume
  end

end  