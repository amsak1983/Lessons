# frozen_string_literal: true

class CargoCarriage < Carriage
  def initialize
    super
    @type = :cargo
  end

  def take_place(volume)
    @taken_place += 1 if free_place >= volume
  end
end
