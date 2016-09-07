module Larc
  class Vector

    # Public: Primary interface to instantiate a vector with coordinates.
    def self.[](*coordinates)
      new(coordinates: coordinates)
    end

    def initialize(coordinates:)
      @coordinates = coordinates.map {|coordinate| coordinate.to_f }
      @dimension = coordinates.length
    end

    attr_reader :coordinates, :dimension

    def +(vector)
      raise "mismatched dimensions" if vector.dimension != dimension

      self.class.new({
        coordinates: coordinates.each_with_index.map {|coordinate, i| (coordinate + vector.coordinates[i]) }
      })
    end

    def -(vector)
      self.class.new({
        coordinates: coordinates.each_with_index.map {|coordinate, i| (coordinate - vector.coordinates[i]) }
      })
    end

    def *(value)
      if value.is_a?(Numeric)
        return self.class.new({
          coordinates: coordinates.map {|coordinate| (value * coordinate) }
        })
      end

      vector = value
      raise "mismatched dimensions" if vector.dimension != dimension

      self.class.new({
        coordinates: coordinates.each_with_index.map {|coordinate, i| (coordinate * vector.coordinates[i]) }
      })
    end
  end
end
