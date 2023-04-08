class PassengerCarriage < Carriage
    
  def initialize
    @type = :passenger
    register_instance
  end
end

