# This will give you the contents of the `sample.txt` file as one big string
sample_text = File.read('sample.txt')

sample_text2 = "The quick brown fox jumped over the lazy dog."

# makes all words lower case and scrubs punctuation
def normalize(text)
  text.downcase.gsub(/[^a-z ]/, '')
end

def unique_words(text)
  words = normalize(text).split
  words.uniq
end

def word_count(text, unique: false)
  if unique == false
    normalize(text).split.length
  else
    unique_words(text).length
  end
end

puts unique_words(sample_text2)
puts word_count(sample_text2, unique: true)
