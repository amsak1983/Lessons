class PassengerCarriage < Carriage
  def initialize
    @type = :passenger
    register_instance
  end

  def take_place
    @take_place += 1 if free_place >= 0
  end
end

