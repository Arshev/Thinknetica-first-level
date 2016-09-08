class Carriage
  include Company
  include Accessors
  include Validation
  attr_accessor :type

  def number
    rand(10..100)
  end
end
