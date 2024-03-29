class Train

  include Manufacturer
  include InstanceCounter

  @@trains = {}

  attr_reader :number
  attr_reader :type 
  attr_reader :carriage
  attr_reader :route

  def initialize(number)
    @number = number
    @carriages = []
    @@trains[number] = self
    register_instance
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
      puts "Вы на конечной станции в маршруте"
    end
  end

  def go_back
    if current_station != previous_station
      move_to_station(prev_station)
    else
      puts "Вы на первой станции в маршруте"
    end
  end

  def previous_station
    previous_index = @route.stations.find_index(@station) -1
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

  protected

  # Методы служат для внутреннего использования в классе

  def move_to_station(station)
    @station.send_train(self)
    @station = station
    @station.take_train(self)
  end

  def carriage_valid?(carriage)
    if !@speed.zero?
      puts "Сначала остановите поезд"
      false
    elsif !@type.eql?(carriage.type)
      puts "Не подходящий тип вагона!"
      false
    else
      true
    end
  end
end

