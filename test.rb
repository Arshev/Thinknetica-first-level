class Car
  attr_accessor :speed

  attr_reader :engine_volume

  def initialize(speed = 0)
    @speed = speed
  end

  def start_engine
    puts "Wroom!"
  end

  def beep
    puts "beep beep"
  end

  def stop
    self.speed = 0
  end

  def go
    self.speed = 50
    beep
  end
end

class Moto
  attr_accessor :speed

  attr_reader :engine_volume

  def initialize(speed = 50)
    @speed = speed
  end

  def start_engine
    puts "Wroom!"
  end

  def beep
    puts "beep beep"
  end

  def stop
    self.speed = 0
  end

  def go
    self.speed = 150
    beep
  end
end