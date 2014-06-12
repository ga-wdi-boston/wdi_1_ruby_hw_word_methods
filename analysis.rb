require 'pry'
# This will give you the contents of the `sample.txt` file as one big string
sample_text = File.read('sample.txt')

# Normalize all words in text
# Split text into array of words
#   - split each word into chars
#   - delete non-alpha chars
#   - join chars back into words
def normalise_text(text)
  text.split.map { |word| word.chars.
    delete_if{ |c| /[[:alpha:]]/.match(c).nil? }.join.downcase }
end

normalised = normalise_text(sample_text)

# Find unique words in text
#   - normalise text
#   - create set from array of all words
def unique_words(text)
  all_words = normalise_text(text)
  all_words & all_words
end

words_set = unique_words(sample_text)

binding pry
