require 'pry'

# This will give you the contents of the `sample.txt` file as one big string
sample_text = File.read('sample.txt')

sample_text2 = "The the the the quick! brown brown brown fox fox   ;jumped over the lazy lazy dog dog."

# makes all words lower case and scrubs punctuation
def normalize(text)
  text.downcase.gsub(/[^a-z ]/, '')
end

def unique_words(text)
  normalize(text).split.uniq
end

def word_count(text, unique: false)
  if unique == false
    normalize(text).split.length
  else
    unique_words(text).length
  end
end

def individual_word_counts(text)
  word_counts = {}
  unique_words(text).each do |i|
    count = 0
    normalize(text).scan(i) { |x| count += 1 }
    word_counts[i] = count
  end
  word_counts
end



puts unique_words(sample_text2)
puts word_count(sample_text2, unique: true)
puts individual_word_counts(sample_text)

