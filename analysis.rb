require 'pry'

# This will give you the contents of the `sample.txt` file as one big string
sample_text = File.read('sample.txt')

# puts words within string into an array
def split_text(file)
  file.split
end

# iterates over array to find frequency of word
def find_unique_words(string)
  string_no_special = string.gsub(/[\,\.\:\)\()]/, ' ')
  words = string_no_special.downcase.split
  words.uniq.sort
end

# turns string to array, then get the length of the array.
# specifies if looking for only unique values (.uniq)
def word_count(string, count_unique = false)
  countable_string = string.downcase.split
  if count_unique
    countable_string.uniq.length
  else
    countable_string.length
  end
end

# iterates through array of words and assignes a number within a hash
def word_occurences(string)
  word_hash = Hash.new(0)
  words = string.downcase.split
  words.each do |word|
    word_hash[word] += 1
  end
  word_hash
end

# currently collects all strings that match the correct length threshold, does not
#provide most common string....
def most_common_word(string, length_threshold = 3)
  common_word = []
  word_hash = Hash.new(0)
  searchable_array = string.downcase.split
  searchable_array.each do |word|
    if word.length > length_threshold
      greater_than_threshold << word
    end
    greater_than_threshold.each do |word|
      word_hash[word] += 1
    end
    word_hash.sort
    #return value with highest key/value value number
  end
  binding.pry
end

def

puts most_common_word(sample_text, length_threshold = 4)
