# Jake Austin
# GA WDI Boston June
# hw3
# Jun 11, 2014

# This will give you the contents of the `sample.txt` file as one big string
sample_text = File.read('sample.txt')

# Normalize all words in text
# Split text into array of words
#   - split each word into chars
#   - delete non-alpha chars
#   - join chars back into words, downcase
def normalized_words(text)
  text.split.map { |word| word.chars.
    delete_if{ |c| /[[:alpha:]]/.match(c).nil? }.join.downcase }
end

# Find unique words in text
#   - normalize text
#   - create set from array of all words
def unique_words(text)
  all_words = normalized_words(text)
  all_words & all_words
end

# Find number of words in text
#   - option to find number of unique words
#   - use count in conjunction with either normalise_words or unique_words
def how_many_words(text, unique: false)
  unique ?  unique_words(text).count : normalized_words(text).count
end

# Create hash of unique word => number of occurances
#    - Find unique words
#    - go through all words, aggregate counts of unique words
def unique_words_with_counts(text)
  words_set = unique_words(text)
  all_words = normalized_words(text)
  counts = words_set.map{ |word| all_words.count(word) }
  Hash[words_set.zip(counts)]
end

puts unique_words_with_counts(sample_text)
# Find most common word longer than an optional threshhold (default 3)
#    - use hash to find most occurances
#    - a tie defaults to whichever word appears first
def words_mode(text, min_length: 3)
  words_and_counts = unique_words_with_counts(text)
  words_and_counts.delete_if{ |key, val| key.length < min_length }
  words_and_counts.key(words_and_counts.values.max)
end

# Challenge: find length of longest word, return array of all unique words
#            of "longest" length
#    - use unique words, sort by length
#    - keep all words of length == max length
def longest_words(text)
  words = unique_words(text)
  length_longest = words.sort_by!{ |k| k.length }.last.length
  words.keep_if{ |k| k.length == length_longest }
end
