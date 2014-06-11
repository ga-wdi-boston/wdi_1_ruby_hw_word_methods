require 'pry'
# This will give you the contents of the `sample.txt` file as one big string
sample_text = File.read('sample.txt')

# 1. Method that splits a string into an array of normalized words.
# "Normalized" here means that the words should be all lowercase
# and scrubbed of any punctuation such as periods or parentheses.

def normalize(text)
  normalized = text.gsub(" '"," ").gsub("' "," ")
  normalized.delete! "." "," "(" ")" ";" "!" ":" "?" "\""
  normalized.downcase.split
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
  normalize(text).each do |word|
    word_counts[word] = 0 if !word_counts[word]
    word_counts[word] += 1
  end
  word_counts
end

# 5. Find the most common word in a string that is longer than some threshold
# The threshold should be optional, and default to 3 characters

def most_common(text, too_short: 3)
  long_words = each_word_count(text).select do |word, count|
    word.length > too_short
  end

  long_words.select do |word, count|
    count == long_words.values.max
  end
end

# * Write a method that finds the length of the longest word in a string,
# returns an array of all unique words in the string that are that length.

def longest_words(text)
  greatest_length = unique_words(text).map { |word| word.length }.max
  unique_words(text).select do |word|
    word.length == greatest_length
  end
end

