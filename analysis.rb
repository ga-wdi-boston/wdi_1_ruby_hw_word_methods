# This will give you the contents of the `sample.txt` file as one big string
sample_text = File.read('sample.txt')

# split and normalise text
def split_normalise(text)
  text.downcase.gsub(/[^a-z]/, ' ').gsub("'", '').split
end

puts split_normalise(sample_text)

# method to return unique words
def unique_words(text)
  split_normalise(text).uniq
end

puts unique_words(sample_text)

# method for text count
def word_count(text, unique: false)
  if unique == false
    normalise(text).split.count
  else
    unique_words(text).count
  end
end

puts word_count(sample_text, unique: false)

# method for frequency of words in a hash

# method to find most common words in a string longer than a threshold
