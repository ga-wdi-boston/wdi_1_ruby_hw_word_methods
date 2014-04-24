require 'pry'
require 'net/http'
require 'uri'

# This will give you the contents of the `sample.txt` file as one big string
sample_text = File.read('sample.txt')

# Method to split a string into an array of words -- all lowercase and scrubbed of punctuation
def scrub_and_lowercase(text)
  words = []
  lowercase_text = text.downcase
  words = lowercase_text.split(/\W+/)
end

# Method takes string and returns array of unique words in it ignores punctuation and capitalization
def list_unique_words(text)
  unique = []
  unique = scrub_and_lowercase(text).uniq
end

# Method counts how many words in a string and gives option of counting unique or total words
def count_words(text, unique_or_total)
  split_string = []
  if unique_or_total == 'total'
    split_string = scrub_and_lowercase(text)
    split_string.length
  else
    split_string = list_unique_words(text)
    split_string.length
  end
end

# Method takes a string and returns hash with keys representing normalized words and values of how many occurences
def find_occurence(text)
  all_words = []
  unique_words = []
  count = 0
  occurence = {}

  all_words = scrub_and_lowercase(text)
  unique_words = list_unique_words(text)

  unique_words.each do |unique_word|
    all_words.each do |all_word|
      if all_word == unique_word
        count += 1
      end
      occurence[unique_word.to_sym] = count
    end
    count = 0
  end
  return occurence
end

# Method finds most common word in a string longer than particular length with default of 3
def long_word_occurence(text, longer_than = 3)
  most_common = 0
  most_common_word = nil
  occurence = {}
  occurence = find_occurence(text)

  occurence.each do |key, value|
    if key.to_s.length > longer_than
      if value > most_common
        most_common = value
        most_common_word = key.to_s
      end
    end
  end
  return most_common_word
end

# Method finds length of longest word in a string and returns array of unique words in that string with the same length
def number_of_longest_words(text)
  longest_word = ""
  longest_word_length = 0
  unique_longest_words = []
  all_words = []

  all_words = scrub_and_lowercase(text)

  all_words.each do |word|
    if word.length > longest_word_length
      longest_word = word
      longest_word_length = word.length
    end
  end

  all_words.each do |word|
    if word.length == longest_word_length
      unique_longest_words << word
    end
  end
  return unique_longest_words
end

def white_rabbit(url)
  Net::HTTP.get(URI.parse(url))
end

# puts scrub_and_lowercase_text(sample_text)
# puts list_unique_words(sample_text)
# puts count_words(sample_text, 'total')
# puts count_words(sample_text, 'unique')
# puts find_occurence(sample_text)
# puts long_word_occurence(sample_text)
# puts long_word_occurence(sample_text, 6)
# puts long_word_occurence(sample_text, 100)
# puts number_of_longest_words(sample_text)
# puts white_rabbit('http://www.wikipedia.com')
