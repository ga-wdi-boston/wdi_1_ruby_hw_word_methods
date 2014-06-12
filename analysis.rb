require 'pry'
# This will give you the contents of the `sample.txt` file as one big string
sample_text = File.read('sample.txt')

# method for normalizing text
# takes whole sample text,
# returns array of words with no punctuation or spaces
def make_simple(whole_text)
  whole_text.gsub(/[.!?"')(:;,-]/, '').downcase.split
  # return array of strings
end

# method for finding unique words
# takes a String
# returns an array of all of it's unique words
def find_unique (whole_text)
  make_simple(whole_text).uniq
  # return array of strings
end

# method for counting how many words are in a string
# takes *option* to count unique words instead of total words returns count
# returns an int for the count
def get_wordcount (whole_text, countunique: false)
  countunique ? find_unique(whole_text).length : make_simple(whole_text).length
  # return an int
end

# method for counting number of occurences of a word in a string
# takes a string
# returns a hash where the keys are normalized words and the values are integers representing the number of occurences.
def get_occurence_count (whole_text)
  words_to_count = find_unique(whole_text)
  words_for_counting = make_simple(whole_text)
  occurences = {}
  count = 0

  (0..(get_wordcount(whole_text, countunique: true))).each do |uniqpos|
    count = 0
    (0..(get_wordcount(whole_text, countunique: false))).each do |pos|
      if words_to_count[uniqpos] == words_for_counting[pos]
        count += 1
      end
      occurences[words_to_count[uniqpos]] = count
    end
  end
  occurences
  # return a hash (keys are strings, vals are ints)
end

# method for finding most common word in a string longer than threshold
# takes an option (default 3) of min letters
# returns the most common word
def most_common_word (letter_length: 3)
  # return string
end

puts get_occurence_count(sample_text)
