require_relative "./test_helper"

test "Vector#new accepts coordinates and makes them accessible at #coordinates" do
  vector = Larc::Vector.new(coordinates: [1, 2])

  assert_equal [1, 2], vector.coordinates
end

test "Vector.[] takes coordinates as args and instantiates Vector with coordinates" do
  vector = Larc::Vector[3, 2]

  assert_equal [3, 2], vector.coordinates
end

test "Vector#dimension is the length of the coordinates array" do
  vector = Larc::Vector[5, 2, 1, 4, 2]

  assert_equal 5, vector.dimension
end
