require './ach'
require 'test/unit'

class TestSet < Test::Unit::TestCase

  def setup
    # before each test case
    # initialize vars
  end

  def test_az
    # testing with a-z alphabet
    @ac = AtbashCipher.new('abcdefghijklmnopqrstuvwxyz')

    assert_equal('abc', @ac.encode('zyx'))
    assert_equal('zyx', @ac.encode('abc'))

    assert_equal('abc', @ac.decode('zyx'))
    assert_equal('zyx', @ac.decode('abc'))

    assert_equal('sofe', @ac.encode('hluv'))
    assert_equal('hluv', @ac.encode('sofe'))

    assert_equal('sofe', @ac.decode('hluv'))
    assert_equal('hluv', @ac.decode('sofe'))

    assert_equal('voaliilyirmxlozxvixz', @ac.encode('elzorrobrincolacerca'))
    assert_equal('elzorrobrincolacerca', @ac.encode('voaliilyirmxlozxvixz'))

    assert_equal('voaliilyirmxlozxvixz', @ac.decode('elzorrobrincolacerca'))
    assert_equal('elzorrobrincolacerca', @ac.decode('voaliilyirmxlozxvixz'))
  end

  def test_hebreo
    # testing with hebrew alphabet
    @ac = AtbashCipher.new('אבגדהוזחטיכתשרקצפעסנמל')

    assert_equal('גבא', @ac.encode('נמל'))
    assert_equal('גבא', @ac.decode('נמל'))

    assert_equal('רשהנ', @ac.encode('טיעג'))
    assert_equal('רשהנ', @ac.decode('טיעג'))

    assert_equal('תיטזמ', @ac.encode('כשרצב'))
    assert_equal('תיטזמ', @ac.decode('כשרצב'))

    assert_equal('ילחזעצ', @ac.encode('שאקצהז'))
    assert_equal('ילחזעצ', @ac.decode('שאקצהז'))

    assert_equal('abc', @ac.encode('abc'))
    assert_equal('asddsa', @ac.decode('asddsa'))
  end
end