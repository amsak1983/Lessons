class CargoCarriage < Carriage
  type = :cargo
  
  def initialize
    super(type)
  end
end

