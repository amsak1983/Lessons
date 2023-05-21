# frozen_string_literal: true

class Station
  include InstanceCounter
  include Validation

  attr_reader :name, :trains

  NUMBER_FORMAT = /^[a-zа-я\d]{3}-?[a-zа-я\d]{2}$/i.freeze

  validate :name, :presence
  validate :name, :format, NUMBER_FORMAT

  @@stations = []

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

  def with_each_train(&block)
    @train.each(&block)
  end
end
