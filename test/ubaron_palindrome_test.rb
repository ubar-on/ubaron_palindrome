# frozen_string_literal: true

require "test_helper"

class UbaronPalindromeTest < Minitest::Test
  def test_non_palindrome
    refute "apple".palindrome?
  end
  
  def test_literal_palindrome
    assert "racecar".palindrome?
  end
  
  def test_mixed_case_palindrome
    assert "Racecar".palindrome?
  end

  def test_palindrome_with_punctuation
      assert "Madam, I'm Adam.".palindrome?
  end  
end
