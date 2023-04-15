class CargoCarriage < Carriage
    
  def initialize
    @type = :cargo
    register_instance
  end
end

