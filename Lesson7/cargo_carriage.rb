class CargoCarriage < Carriage
  def initialize
    @type = :cargo
  end

  def take_place(volume)
    @take_place += 1 if free_place >= volume
  end
end

