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
  end
end
