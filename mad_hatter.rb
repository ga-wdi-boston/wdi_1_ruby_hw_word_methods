require 'pry'

# This will give you the contents of the `sample.txt` file as one big string
sample_text = File.read('sample.txt')

# Method to split a string into an array of words -- all lowercase and scrubbed of punctuation
def scrub_and_lowercase_text(text)
  words = []
  lowercase_text = text.downcase
  words = lowercase_text.split(/\W+/)
end

# Method takes string and returns array of unique words in it ignores punctuation and capitalization
def list_unique_words(text)
  text.uniq
end

# Method counts how many words in a string and gives option of counting unique or total words
def count_words(text, unique_or_total)
  if unique_or_total == total
    scrub_and_lowercase_text(text).length
  else
    list_unique_words(scrub_and_lowercase_text(text)).length
  end
end

# Method takes a string and returns hash with keys representing normalized words and values of how many occurances


# Method finds most common word in a string longer than particular length with default of 3


# Method finds length of longest word in a string and returns array of unique words in that string with the same length


puts scrub_and_lowercase_text(sample_text)

