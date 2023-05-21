# frozen_string_literal: true

class Route
  include InstanceCounter
  include Validation

  attr_accessor :stations, :first_station, :second_station

  validate :first_station, :type, Station
  validate :second_station, :type, Station

  def initialize(from, to)
    @first_station = from
    @second_station = to
    validate!
    @stations = [from, to]
  end

  def add_station(station)
    @station.insert(-2, station)
  end

  def remove_station(station)
    return unless @station.valid?(station)

    @stations.delete(station)
  end

  def list_station
    @station.each_with_index { |station, index| puts "#{index} #{station.name}" }
  end

  private

  def station_valid?(station)
    raise 'Станция не найдена в маршруте' unless @stations.include?(station)

    true
  end
end
