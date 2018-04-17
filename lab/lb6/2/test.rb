require './proc.rb'
require 'minitest/autorun'
# test for lb6-1
class LbTest < Minitest::Test
  def setup; end

  def test_1
    assert_equal 8, fib(6)
  end

  def test_2
    epsilon1 = 10**-3
    assert_in_delta(1.618033989, func(epsilon1), 0.001)
  end

  def test_3
    epsilon2 = 10**-4
    assert_in_delta(1.618033989, func(epsilon2), 0.0001)
  end

  def teardown; end
end
