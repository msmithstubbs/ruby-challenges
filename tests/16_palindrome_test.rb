# Add tests to me :D
#
require 'test/unit'
require_relative '../16_palindrome.rb'

class PalindromeTest < Test::Unit::TestCase
  def test_palindrome
    assert_equal true, palindrome("mom")
    assert_equal true, palindrome("racecar")
    assert_equal false, palindrome("hello")
  end
end
