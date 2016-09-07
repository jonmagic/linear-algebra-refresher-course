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

    def inner_product(vector)
      coordinates.
        each_with_index.
        map {|coordinate, i| (coordinate * vector.coordinates[i]) }.
        inject(0) {|sum, value| sum + value }
    end

    def magnitude
      Math.sqrt coordinates.inject(0) {|sum, coordinate|
        sum + coordinate * coordinate
      }
    end

    def radians(vector)
      Math.acos(inner_product(vector) / (magnitude * vector.magnitude))
    end

    def degrees(vector)
      (radians(vector) * (180 / Math::PI))
    end

    def parallel(vector)
      if coordinates.uniq == [0] || vector.coordinates.uniq == [0]
        return true
      end

      scalar = coordinates.first / vector.coordinates.first

      (vector * scalar).coordinates.map {|coordinate| coordinate.round(3) } ==
      self.coordinates.map {|coordinate| coordinate.round(3) }
    end

    def orthogonal(vector)
      inner_product(vector).round(3) == 0.0
    end
  end
end
