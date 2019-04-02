# Exes and Ohs
# Difficulty: medium/hard

# This is a great question for interview prep, so lets not google it. 
# Instead, try whiteboarding, and thinking of your approach before coding. There are multiple approaches to this question, so try to think of the most efficient one you can!

# Write a method that will take a string as an input. 
# The method will check this string, and count the amount 
# of 'x's and 'o's. It should return true if the amount of 'x's 
# and 'o's are the same, and should return false if they are different. 
# It should also be case insensitive, and work with any set of two 
# characters (for example, the string could contain "oooxxx" or
# "eeefff" - both of these would return true because there are
# two distinct characters and an equal number of each in both
# examples).

# Example input: "ooxx"
# Expected output: true

# Example input: "oOxXxoX"
# Expected output: false

# Example input: "ooXx"
# Expected output: true

# Example input: "rtrt"
# Expected output: true

# Example input: "RtrT"
# Expected output: true

# Example input: "efefy"
# Expected output: false

def exes_and_ohs(input)
  # Use downcase so we can treat the chars as case insensitive
  chars = input.downcase.chars

  # Use a hash to count the character. The key will be a character (eg 'x') and
  # the value the occurence of each characters. 
  #
  # I'll use `Hash.new()` instead of `{}` so I can set a default value for keys
  character_count = Hash.new(0)

  chars.each do |char|
    character_count[char] += 1
  end

  # Check there are only two characters in the string
  # If not: it's not balanced so return false
  if character_count.keys.length != 2
    return false
  end

  # Check the count of the first character and the second character are the same
  # If not, it's unbalanced so return false
  if character_count.values[0] != character_count.values[1]
    return false
  end

  # If we've got this far the characters must be balanced, so return true
  return true
end
