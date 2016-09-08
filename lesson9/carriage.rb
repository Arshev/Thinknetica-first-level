class Carriage
  include Company
  attr_accessor :type

  def number
    rand(10..100)
  end
end
