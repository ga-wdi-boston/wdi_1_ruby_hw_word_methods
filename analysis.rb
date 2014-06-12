# This will give you the contents of the `sample.txt` file as one big string
sample_text = File.read('sample.txt')

#Method that splits a string into an array and normalizes all the sample_text


def clean_text(sample_text)
  sample_text.tr('^A-Za-z0-9 ', '').split.map(&:downcase)
end

#Method that takes a string and returns an array of all *unique* words in it, ignoring punctuation and capitalization differences.
def unique_words(sample_text)
end
#Method that counts how many words are in a string. This method should also provide the *option* to count unique words instead of total words.
def word_count(sample_text)
end
#Method that takes a string and returns a hash where the keys are normalized words, and the values are integers representing how many times that word occurs in the string.
def word_score(sample_text)
end
#Method that finds the most common word in a string that is longer than a particular "length threshold". The threshold should be optional, and default to 3 characters (i.e. words of 3 characters or less will not be considered). It's up to you how to handle multiple words being "tied" for most common.
def popular_long_words(sample_text)
end

#* Write a method that finds the length of the longest word in a string, and returns an array of all unique words in the string that are that length.
def long_word_friends(sample_text)
end


puts clean_text(sample_text)
puts "---------------------------------------------------"
puts unique_words(sample_text)
puts "---------------------------------------------------"
puts word_count(sample_text)
puts "---------------------------------------------------"
puts word_score(sample_text)
puts "---------------------------------------------------"
puts popular_long_words(sample_text)
