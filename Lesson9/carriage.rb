# frozen_string_literal: true

class Carriage
  include Manufacturer

  attr_reader :type, :total_place, :taken_place

  def initialize(_total_place)
    @total_place = place
    @taken_place = 0
    register_instance
  end

  def free_place
    total_place - taken_place
  end

  def take_place
    raise 'not implemented'
  end
end
