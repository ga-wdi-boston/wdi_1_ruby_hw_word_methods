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

def split_string_to_array_unique(file)
  result = (file.split( )).uniq
  return result
end

# # Method that counts how many words are in a string. This method should also
# # provide the option to count unique words instead of total words.

def count_words_in_string(file, type: :unique)
  if type == :unique
    result = ((file.split( )).uniq).count
  else
    result = (file.split( )).count
  end
  return result
end

# # Method that takes a string and returns a hash where the keys are
# # normalized words, and the values are integers representing how many
# # times that word occurs in the string.

# def word_number_of_appearances(hash = {words, appearances})
#     # Defines sample_text local variable and directs to the text in sample.txt file
#     sample_text = File.read('sample.txt')
#     # Defines local variable for key needed for result hash output
#     words = split_string_to_array_unique(sample_text)
#     #Defines local variable for value needed for result hash output
#     appearances = (count_words_in_string(sample_text)).to_i
#     result = {
#         #Needs to call/pull each word from split_string_to_array_unique method
#         # and each number from count_words_in_string method
#         # needs to call the each value for each of the two arrays before moving
#         # to the next instance
#         # match them by index!
#         :words => appearances
#         }
#     return result
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



