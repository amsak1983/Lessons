class Carriage
  include Manufacturer
  
  attr_reader :type
  attr_reader :seats
  attr_reader :passengers

  def initialize(seats)
    @seats = seats
    register_instance
    @passengers = 0
  end

  def take_seats
    @passengers += 1 unless free_seats.zero?
  end

  def free_seats
    @seats - @passengers
  end
end

