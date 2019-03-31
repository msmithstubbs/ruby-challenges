require_relative '../19_balanced_number'
require 'test/unit'


class BalancedNumber < Test::Unit::TestCase
    def test_odd_digits
      assert_equal(true, odd_digits?(123))
      assert_equal(false, odd_digits?(1234))
    end
    def test_balanced_one_middle
      assert_equal(balanced_num(4),"Balanced")
      assert_equal(balanced_num(242),"Balanced")
      assert_equal(balanced_num(22422),"Balanced")
      assert_equal(balanced_num(1234123),"Balanced")
    end
    
    def test_not_balanced_one_middle
        assert_equal(balanced_num(243), "Not Balanced")
        assert_equal(balanced_num(22423), "Not Balanced")
        assert_equal(balanced_num(1234124), "Not Balanced")
    end
  
    def test_balanced_two_middle
        assert_equal(balanced_num(45),"Balanced")
        assert_equal(balanced_num(2452),"Balanced")
        assert_equal(balanced_num(224522),"Balanced")
        assert_equal(balanced_num(12345123),"Balanced")
    end

    def test_not_balanced_two_middle
        assert_equal(balanced_num(1452), "Not Balanced")
        assert_equal(balanced_num(2453), "Not Balanced")
        assert_equal(balanced_num(224523), "Not Balanced")
        assert_equal(balanced_num(12345124), "Not Balanced")
    end
  end
