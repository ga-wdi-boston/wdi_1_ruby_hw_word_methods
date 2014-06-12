require 'pry'

# This will give you the contents of the `sample.txt` file as one big string
sample_text = File.read('sample.txt')

# Method that splits a string into an array of normalized words: lowercase without any punctuation
def splits(string)
  normalized_array = string.downcase.scan(/\w+/)
end

puts splits(sample_text)
puts

# Method that takes a string and returns an array of all unique words in it (ignoring punctuation and capitalization)
def unique(string)
  unique_array = splits(string).uniq
end

puts unique(sample_text)
puts
# Method that counts how many words are in a string- option to count unique words instead of total words
def counts(string, uniq_op = false)
  str_count = string.split.count
  uniq_op == true ? unique(string).count : str_count
end

puts counts(sample_text)
puts
# Method that takes a string and returns a hash where the keys are normalized words, and the values are ints representing how many times that word occurs in the string
def word_hash_count(string)
  str_arr = splits(string)
  count_array = str_arr.group_by { |i| i }.map { |k,v| [k,v.count] }
  count_hash = Hash[*count_array.flatten]
end

puts word_hash_count(sample_text)
puts

# Method that finds the most common word in a string that is longer than a particular "length threshold". The threshold should be optional, and default to 3 chars. How to handle multiple words being 'tied' for most common.
def most_common(string, leng_thresh = 3)
  hsh = word_hash_count(string)
  word_len_hsh = hsh.select { |k,v| k.length > 3 }
  common_word = word_len_hsh.max_by { |k,v| v }[0]
end

puts most_common(sample_text)
puts

binding.pry

# COMBINE METHODS WHENEVER POSSIBLE
