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

  def remove_station(station)
    if @station.include?(station)
      @stations.delete(station)
    else
      puts "Станция не найдена"      
    end
  end

  def list_station
    @station.each_with_index { |station, index| puts "#{index} #{station.name}" }
  end
  
end


