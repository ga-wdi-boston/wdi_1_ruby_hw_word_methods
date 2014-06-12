require 'pry'
# This will give you the contents of the `sample.txt` file as one big string
sample_text = File.read('sample.txt')

# Normalize all words in text
# Split text into array of words
#   - split each word into chars
#   - delete non-alpha chars
#   - join chars back into words

normalized_words = sample_text.split.map { |word|
  word.chars.delete_if { |c| /[[:alpha:]]/.match(c).nil? }.join.downcase }


binding pry
