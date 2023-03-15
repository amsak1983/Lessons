class Route
  attr_reader :stations

  def initialize(start_station, end_station)
    @stations = []
    @stations << start_station
    @stations << end_station
  end

  def add_station(station)
    @station.insert(-2, station)
  end

  def delete_station(station)
    @stations.delete(station)
  end
end


