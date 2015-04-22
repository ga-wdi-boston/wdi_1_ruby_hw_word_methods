# Blair Caple
# GA Alice Analysis Assignment
# June 11, 2014

require 'pry'

# Method 1:
# Method that splits a string into an array of normalized words.
# Normalized here means that the words should be all lowercase and scrubbed
# of any punctuation such as periods or parentheses.
def split_and_normalize(str)
  # Note special case to remove double hyphen
  str.gsub(/([^a-zA-Z0-9_\-\s]|--)/, '').downcase.split(' ')
end

# Method 2:
# Method that takes a string and returns an array of all unique words in it,
# ignoring punctuation and capitalization differences.
def unique_split_and_normalize(str)
  split_and_normalize(str).uniq
end

# Method 3:
# Method that counts how many words are in a string. This method should
# also provide the option to count unique words instead of total words.
def count_words(str, unique: false)
  if(unique)
    unique_split_and_normalize(str).size
  else
    split_and_normalize(str).size
  end
end

# Method 4:
# Method that takes a string and returns a hash where the keys are
# normalized words, and the values are integers representing how many times
# that word occurs in the string.
def word_frequency(str)
  arr = split_and_normalize(str)
  result = {}
  arr.uniq.each { |key| result[key.to_sym] = arr.count(key) }
  result
end

# Method 5:
# Method that finds the most common word in a string that is longer than a
# particular "length threshold". The threshold should be optional, and default
# to 3 characters (i.e. words of 3 characters or less will not be considered).
# It's up to you how to handle multiple words being "tied" for most common.
def most_common_word(str, length = 3)
  if length < 3
    length = 3
  end
  result = nil
  frequency = 0
  word_frequency(str).each do |k, v|
    if v > frequency && k.length > length
      frequency = v
      result = k.to_s
    end
  end
  result
end

# Extra Challenge
# Write a method that finds the length of the longest word in a string, and
# returns an array of all unique words in the string that are that length.
def longest_unique_words(str)
  arr = unique_split_and_normalize(str).sort_by! { |e| e.length }.reverse!
  length = arr[0].length

  result = [arr[0]]
  (1...arr.size).each do |idx|
    if arr[idx].length == length
      result << arr[idx]
    else
      break
    end
  end
  result
end

sample_text = File.read('sample.txt')
puts word_frequency(sample_text)
