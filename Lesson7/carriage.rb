class Carriage
  include Manufacturer
  
  attr_reader :type
  attr_reader :seats
  attr_reader :passengers
  attr_reader :total_place
  attr_reader :taken_place

  def initialize(total_place)
    @total_place = place
    @taken_place = 0
    register_instance
    @passengers = 0
  end

  def take_seats
    @passengers += 1 unless free_seats.zero?
  end

  def free_place
    total_place - taken_place
  end

  def take_place
    raise 'not implemented'
  end
end

