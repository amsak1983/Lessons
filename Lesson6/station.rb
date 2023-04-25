class Station	

  @@stations = []

  attr_reader :name

  def initialize(name)
    @name = name
    @trains = []
    validate!
    @@stations << self
  end
  
  def self.all
    @@stations
  end
  
  def take_train(train)
    @trains << train
  end

  def list
    @trains.each do |train|
      puts "#{train.number} #{train.route.stations.first.name} - #{train.route.stations.last.name}"
    end
  end

  def list_type(type)
    @trains.select { |train| train.type == type }.each do |train|
      puts "#{train.number} #{train.route.stations.first.name} - #{train.route.station.last.name}"
    end
  end

  def send_train(train)
    @trains.delete(train) if @trains.include?(train)
  end

  def valid?
    validate!
    true
  rescue 
    false
  end
      
  protected

  # Методы служат для внутреннего использования в классе
    
  def validate!
    raise "Название станции не может быть пустым!" if self.name.nil?
    raise "Название станции должно иметь не менее 6 символов" if self.name.length < 6
  end
end

