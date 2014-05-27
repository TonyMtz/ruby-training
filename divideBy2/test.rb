require './my_calc'
require 'test/unit'

class TestSet < Test::Unit::TestCase

  def setup
    @myCalc = MyCalc.new
  end

  def test_divideBy2
    assert_equal('0111', @myCalc.divideBy2(7))
    assert_equal('010011', @myCalc.divideBy2(19))
    assert_equal('011000', @myCalc.divideBy2(24))
    assert_equal('0100101', @myCalc.divideBy2(37))
    assert_equal('0100000000', @myCalc.divideBy2(256))
    assert_equal('0100011101110101', @myCalc.divideBy2(18293))
    assert_equal('0111101011111000011100', @myCalc.divideBy2(2014748))
    assert_equal('0111110100010101000100111010000011', @myCalc.divideBy2(8394133123))
  end
end