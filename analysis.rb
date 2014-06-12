# This will give you the contents of the `sample.txt` file as one big string
sample_text = File.read('sample.txt')

# split and normalise text
def split_normalise(text)
  text.downcase.gsub(/[^a-z]/, ' ').split
end

puts split_normalise(sample_text)

# method to return unique words

# method for text count

# method for frequency of words in a hash

# method to find most common words in a string longer than a threshold
