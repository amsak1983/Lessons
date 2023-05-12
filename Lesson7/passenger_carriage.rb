class PassengerCarriage < Carriage
  def initialize(total_place)
    super
    @type = :passenger
  end

  def take_place
    @take_place += 1 if free_place >= 0
  end
end

