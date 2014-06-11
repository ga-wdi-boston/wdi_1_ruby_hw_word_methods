require 'pry'

# This will give you the contents of the `sample.txt` file as one big string
sample_text = File.read('sample.txt')

sample_text2 = "The the the the quick! brown brown brown fox fox   ;jumped rumped lumped sumped over the lazy lazy dog dog."

# makes all words lower case and scrubs punctuation
def normalize(text)
  text.downcase.gsub("'",'').gsub(/[^a-z ]/, ' ').split
end

def unique_words(text)
  normalize(text).uniq
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

  unique_words(text).each do |keyword|
    count = 0

    normalize(text).each do |word|
      if word == keyword
        count += 1
      end
    end

    word_counts[keyword] = count
  end

  word_counts
end

def most_common_word(text, min_length: 3)
  most_common = nil
  word_count = 0

  individual_word_counts(text).each do |word, count|
    if count > word_count && word.length > min_length
      most_common = word
      word_count = count
    end
  end

  most_common
end

def longest_words(text)
  longest_length = 0
  words = []

  unique_words(text).each do |word|
    if word.length > longest_length
      longest_length = word.length
    end
  end

  unique_words(text).each do |word|
    if word.length == longest_length
      words << word
    end
  end

  words
end

puts unique_words(sample_text2)
puts word_count(sample_text2, unique: true)
puts individual_word_counts(sample_text2)
puts most_common_word(sample_text2, min_length: 4)
puts longest_words(sample_text2)

