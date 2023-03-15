class Train
  attr_reader :number
  attr_reader :type
  attr_reader :route
  attr_accessor :station
  attr_accessor :speed
  attr_accessor :count

  def initialize(number, type, count)
    @number = number
    @type = type
    @count = count
    @speed = 0
  end

  def raise_speed(speed)
    self.speed += speed
  end

  def stop
    self.speed = 0
  end
  
  def add_carriage
    if self.speed ==0
      self.count += 1
    else
      puts "Stop before"
    end
  end

  def delete_carriage
    if self.speed == 0
      self.count -= 1
    else
      puts "Stop before"
    end
  end

  def route = (route)
    @route = route
    self.station = self.route.station.first
  end

  def next_station
    self.route.stations[self.route.stations.index(self.station) + 1]
  end

  def previous_station
    self.route.stations[self.route.stations.index(self.station) - 1]
  end

  def move_next_station
    self.station = self.route.stations[self.route.stations.index(self.station) + 1]
  end
end

