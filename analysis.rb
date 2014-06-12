require 'pry'

# This will give you the contents of the `sample.txt` file as one big string
sample_text = File.read('sample.txt')

# Method that splits a string into an array of normalized words: lowercase without any punctuation
def splits(string)
  normalized_array = string.downcase.scan(/\w+/)
end

# Method that takes a string and returns an array of all unique words in it (ignoring punctuation and capitalization)
def unique(string)
  unique_array = splits(string).uniq
end



# Method that counts how many words are in a string- option to count unique words instead of total words
def counts(string, uniq_op = false)
  str_count = string.split.count
  if uniq_op == true
    unique(string).count
  else
    str_count
  end


  # option to count unque words instead of total words- USE unique method you created above.

end

binding.pry

# Method that takes a string and returns a hash where the keys are normalized words, and the values are ints representing how many times that word occurs in the string
def normal_hash
  # take a string and return a hash
  # keys are normalized words
  # values are integers representing how many times that word occurs in the string- USE counts method you created above
end

# Method that finds the most common word in a string that is longer than a particular "length threshold". The threshold should be optional, and default to 3 chars. How to handle multiple words being 'tied' for most common.
def most_common
  # find the most common word in a string that is longer than a specified "length threshold"- USE counts method you created above.
  # threshold is optional and the default should be 3 chars
  # decide how to handle multiple words being tied for most common.
end

# COMBINE METHODS WHENEVER POSSIBLE
