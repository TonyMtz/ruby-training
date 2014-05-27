require './kata'
require 'test/unit'

class TestSet < Test::Unit::TestCase

  def setup
    @calc = MyCalc.new
  end

  def test_correct_cases
    assert_equal(3, @calc.triangular(2))
    assert_equal(28, @calc.triangular(7))
    assert_equal(78, @calc.triangular(12))
    assert_equal(325, @calc.triangular(25))
    assert_equal(1275, @calc.triangular(50))
    assert_equal(500500, @calc.triangular(1000))
    assert_equal(12502500, @calc.triangular(5000))
    assert_equal(50005000, @calc.triangular(10000))
    assert_equal(49820506379595, @calc.triangular(9982034))
    assert_equal(73461896235078, @calc.triangular(12121212))
  end

  def test_out_of_bounds
    assert_equal(0, @calc.triangular(0), '')
    assert_equal(0, @calc.triangular(-1))
    assert_equal(0, @calc.triangular(-5))
  end
end