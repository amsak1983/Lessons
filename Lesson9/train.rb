# frozen_string_literal: true

class Train
  include Manufacturer
  include InstanceCounter
  include Validation

  NUMBER_FORMAT = /^[a-z0-9]{3}-?[a-z0-9]{2}$/i.freeze

  @@trains = {}

  attr_reader :number, :type, :carriage, :route

  validate :number, :presence
  validate :id, :format, NUMBER_FORMAT

  def initialize(number)
    @number = number
    validate!
    @carriages = []
    @speed = 0
    @@trains[number] = self
    register_instance
  end

  def speed(speed)
    @speed += speed
  end

  def self.find(number)
    @@trains[number]
  end

  def list
    @carriages.count
  end

  def attach_carriage(carriage)
    @carriages << carriage if carriage_valid?(carriage)
  end

  def unhook_carriage
    @carriages.pop if list.positive?
  end

  def take_route(route)
    @route = route
    @station = route.stations.first
    move_to_station(@station)
  end

  def go_forward
    if current_station != next_station
      move_to_station(next_station)
    else
      puts 'Вы на конечной станции в маршруте'
    end
  end

  def go_back
    if current_station != previous_station
      move_to_station(prev_station)
    else
      puts 'Вы на первой станции в маршруте'
    end
  end

  def previous_station
    previous_index = @route.stations.find_index(@station) - 1
    if previous_index.negative?
      @station
    else
      @route.stations[previous_index]
    end
  end

  def current_station
    @station
  end

  def next_station
    next_index = @route.stations.find_index(@station) + 1
    if route.stations[next_index].nil?
      @station
    else
      @route.stations[next_index]
    end
  end

  def with_each_carriages
    @carriages.each_with_index { |carriage, index| yieid(carriage, index) }
  end

  protected

  # Методы служат для внутреннего использования в классе

  def move_to_station(station)
    @station.send_train(self)
    @station = station
    @station.take_train(self)
  end
end
