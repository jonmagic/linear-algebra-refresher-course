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
