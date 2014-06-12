# Jake Austin
# GA WDI Boston June
# hw3
# Jun 11, 2014

require 'pry'
# This will give you the contents of the `sample.txt` file as one big string
sample_text = File.read('sample.txt')

# Normalize all words in text
# Split text into array of words
#   - split each word into chars
#   - delete non-alpha chars
#   - join chars back into words, downcase
def normalize_text(text)
  text.split.map { |word| word.chars.
    delete_if{ |c| /[[:alpha:]]/.match(c).nil? }.join.downcase }
end


# Find unique words in text
#   - normalisz text
#   - create set from array of all words
def unique_words(text)
  all_words = normalize_text(text)
  all_words & all_words
end


# Find number of words in text
#   - option to find number of unique words
#   - use count in conjunction with either normalise_words or unique_words
def how_many_words(text, unique: false)
  unique ?  unique_words(text).count : normalize_text(text).count
end

# tests
# all_words = how_many_words(sample_text)
# unique_words = how_many_words(sample_text, unique: true)

# Create hash of unique word => number of occurances
#    - Find unique words
#    - go through all words, aggregate counts of unique words
def unique_words_counts(text)
  words_set = unique_words(text)
  all_words = normalize_text(text)
  counts = words_set.map{ |word| all_words.collect{ |string| string if
    string == word}.compact.count}
  Hash[words_set.zip(counts)]
end

# Find most common word that is longer than an optional threshhold (default 3)
#    - use hash to find most occurances
#    - tie defaults to whichever word appears first
def words_mode(text, min_length: 3)
  words_and_counts = unique_words_counts(text)
  words_and_counts.delete_if{ |key, val| key.length < min_length }
  words_and_counts.key(words_and_counts.values.max)
end

# Challenge: find length of longest word, return array of all unique words
#            of "longest" length



binding pry
