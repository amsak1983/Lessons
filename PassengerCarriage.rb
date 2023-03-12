class PassengerCarriage < Carriage
  attr_reader :type

  def initialize(number)
    @type = :passenger
    @number = number
  end
end

