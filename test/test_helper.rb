require_relative "../lib/larc"
require "matrix"

class TestCase
  def initialize(test_name, &block)
    @test_name = test_name
    @block = block
    @assertions = []
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

  def assert_same_vector(vector1, vector2)
    assert_equal coordinates(vector1), coordinates(vector2)
  end

  def coordinates(vector)
    if vector.respond_to?(:coordinates)
      return vector.coordinates
    end

    vector.inject([]) {|result, coordinate| result << coordinate; result }
  end
end

def test(test_name, &block)
  TestCase.new(test_name, &block).run
end
