# This will give you the contents of the `sample.txt` file as one big string
sample_text = File.read('sample.txt')

sample_text2 = "The quick brown fox jumped over the lazy dog."

# makes all words lower case and scrubs punctuation
def normalize(text)
  text.downcase.gsub(/[^a-z ]/, '')
end

def remove_duplicate_words(text)
  words = normalize(text).split
  words.uniq
end

puts remove_duplicate_words(sample_text2)

