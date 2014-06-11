require 'pry'
# This will give you the contents of the `sample.txt` file as one big string
sample_text = File.read('sample.txt')


# 1. Method that splits a string into an array of normalized words.
# "Normalized" here means that the words should be all lowercase
# and scrubbed of any punctuation such as periods or parentheses.

def normalize(text)
  normalized = text.gsub(" '"," ").gsub("' "," ")
  normalized.delete! "." "," "(" ")" ";" "!" ":" "?" "\""

  normalized.split.map do |word|
    word = word.downcase
  end
end

# 2. Method that takes a string and returns an array of unique* words
# ignoring punctuation and capitalization differences.

def unique_words(text)
  normalize(text).uniq
end

# 3. Method that counts how many words are in a string. This method should also provide the *option* to count unique words instead of total words.

def word_count_total(text, unique: false)
  if unique == true
    unique_words(text).length
  else
    normalize(text).length
  end
end

# 4. Method that takes a string and returns a hash where the keys are normalized words, and the values are integers representing how many times that word occurs in the string.

def each_word_count(text)

  word_counts = {}
  unique_words(text).each do |word|
    word_counts[word] = 0
  end

  normalize(text).each do |word|
    word_counts[word] += 1
  end

  word_counts

end

# 5. Method that finds the most common word in a string that is longer than a particular "length threshold". The threshold should be optional, and default to 3 characters (i.e. words of 3 characters or less will not be considered). It's up to you how to handle multiple words being "tied" for most common.

def most_common(text, too_short: 3)
  long_words = each_word_count(text).select do |word, count|
    word.length > too_short
  end

  highest_frequency = long_words.values.max
  longest_words = long_words.select do |word, count|
    count == highest_frequency
  end
end

binding.pry

# * Write a method that finds the length of the longest word in a string,
# returns an array of all unique words in the string that are that length.
