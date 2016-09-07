require_relative "../lib/larc"

class TestCase
  def initialize(test_name, &block)
    @test_name = test_name
    @block = block
  end

  attr_reader :test_name, :block

  def run
    instance_eval(&block)
  end

  def assert_equal(first, second)
    if first == second
      puts "#{test_name} passed"
    else
      puts "#{test_name} failed: #{first.inspect} does not equal #{second.inspect}"
    end
  end
end

def test(test_name, &block)
  TestCase.new(test_name, &block).run
end

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
