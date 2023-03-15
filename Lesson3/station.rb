class Station
  attr_reader :name
  attr_accessor :trains

  @@station = []

  def initialize(name)
    @name = name
    @trains =[]
    @@station << self
  end

  def self.all
    @@station
  end

  def add_train(train)
    @trains << train
  end

  def show_train
    @trains.each{ |train| puts train }
  end

  def train_count_types_by(type)
    @trains.count { |train| train.type == type }
  end

  def train_types_by(type)
    @trains.select { |train| train.type == type }
  end

  def remove_train(train)
    @trains.delete(train)
  end
end

