class Route
  attr_reader :stations

  def initialize(start_station, end_station)
    @stations = []
    @stations << start_station
    @stations << end_station
    validate!
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

  def valid?
    validate!
  rescue
    false
  end

  protected

  # Методы служат для внутреннего использования в классе
  
  def validate!
    raise "Название станции не может быть пустым." if @stations.empty?
    raise "Станций должно быть больше двух." if @stations.size < 2
    true
  end
end


