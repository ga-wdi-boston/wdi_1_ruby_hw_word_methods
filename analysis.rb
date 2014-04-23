require 'pry'
# This will give you the contents of the `sample.txt` file as one big string
sample_text = File.read('sample.txt')

# Method that splits a string (e.g. the text from sample.txt)
# into an array of normalized words. "Normalized" here means that
# the words should be all lowercase and scrubbed of any punctuation
# such as periods or parentheses.

def split_string_to_array(file)
  result = file.split( )
  return result
end

# Method that takes a string and returns an array of all unique words in it,
# ignoring punctuation and capitalization differences.

# def Method_2

# end

# # Method that counts how many words are in a string. This method should also
# # provide the option to count unique words instead of total words.

# def Method_3

# end

# # Method that takes a string and returns a hash where the keys are
# # normalized words, and the values are integers representing how many
# # times that word occurs in the string.

# def Method_4

# end

# # Method that finds the most common word in a string that is longer than
# # a particular "length threshold". The threshold should be optional, and
# # default to 3 characters (i.e. words of 3 characters or less will not be
# # considered). It's up to you how to handle multiple words being "tied"
# # for most common.

# def Method_5

# end

# # Method that finds the length of the longest word in a string, and returns
# # an array of all unique words in the string that are that length.

# def Method_6

# end


binding.pry
# (6) Completion of each method in the above list
  #(one point each)
# (2) Methods are combined appropriately to avoid
 #duplication of code
# (1) Repository has several logical commits with
   # descriptive messages
# (1) Code uses correct indentation/style and
 # descriptive variable names



