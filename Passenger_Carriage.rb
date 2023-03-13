class PassengerCarriage < Carriage
  type = :passenger
  
  def initialize
    super(type)
  end
end

