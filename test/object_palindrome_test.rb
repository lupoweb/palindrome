require "test_helper"

class ObjectPalindromeTest < Minitest::Test
  def test_not_palindrome
    refute "Apple".palindrome?
  end

  def test_literal_palindrome
    assert "racecar".palindrome?
  end

  def test_mixed_case_palindrome
    assert "RaceCar".palindrome?
  end

  def test_palindrome_punctuation
    assert "Madam, I'm Adam".palindrome?
  end
end
