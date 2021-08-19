require "object_palindrome/version"


module ObjectPalindrome

  # Returns true for a palindrome, false otherwise.
  def palindrome?
    if processed_content.empty?
      false
    else
      processed_content == processed_content.reverse
    end
  end

  private
  # Returns content for palindrome testing.
  def processed_content
    self.to_s.scan(/[a-z0-9]/i).join.downcase
  end
end
class String
  include ObjectPalindrome
end

class Integer
  include ObjectPalindrome
end
