# This will give you the contents of the `sample.txt` file as one big string
sample_text = File.read('sample.txt')

# makes all words lower case and scrubs punctuation
def normalize(text)
  text.downcase.gsub("'",'').gsub(/[^a-z ]/, ' ').split
end

def unique_words(text)
  normalize(text).uniq
end

def word_count(text, unique: false)
  unique ? unique_words(text).length : normalize(text).split.length
end

def individual_word_counts(text)
  word_counts = {}

  unique_words(text).each do |word|
    word_counts[word] = normalize(text).count(word)
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
    longest_length = word.length if word.length > longest_length
  end

  unique_words(text).each do |word|
    words << word if word.length == longest_length
  end

  words
end

puts unique_words(sample_text)
puts word_count(sample_text, unique: true)
puts individual_word_counts(sample_text)
puts most_common_word(sample_text, min_length: 4)
puts longest_words(sample_text)
