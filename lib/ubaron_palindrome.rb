# frozen_string_literal: true

require_relative "ubaron_palindrome/version"

module UbaronPalindrome

  # Returns true for a palindrome, false otherwise.
  def palindrome?
    processed_content.empty? ? 
      false : 
      processed_content == processed_content.reverse
  end

  private

    # Returns content for palindrome testing.
    def processed_content
      to_s.scan(/[a-z0-9]/i).join.downcase
    end
end

class String
  include UbaronPalindrome
end

class Integer
  include UbaronPalindrome
end