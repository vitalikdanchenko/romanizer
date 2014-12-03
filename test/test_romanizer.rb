require 'romanizer'
require 'test/unit'

class TestRomanizer < Test::Unit::TestCase
  
  def test_includence
    assert(Fixnum.included_modules.include?(Romanize))
  end
  
  def test_conversation
    assert_equal 'I',   1.romanize
    assert_equal 'IV',  4.romanize
    assert_equal 'V',   5.romanize
    assert_equal 'IX',  9.romanize
    assert_equal 'X',   10.romanize
    assert_equal 'XL',  40.romanize
    assert_equal 'L',   50.romanize
    assert_equal 'XC',  90.romanize
    assert_equal 'C',   100.romanize
    assert_equal 'CD',  400.romanize
    assert_equal 'D',   500.romanize
    assert_equal 'CM',  900.romanize
    assert_equal 'M',   1000.romanize
    assert_equal 'MCCXXXIV', 1234.romanize
  end
  
  def test_ranges
    assert_raise(ArgumentError) { 0.romanize }
    assert_raise(ArgumentError) { 4000.romanize }
  end
end
