require 'pry'

# This will give you the contents of the `sample.txt` file as one big string
sample_text = File.read('sample.txt')

## QUESTION 1
# this returns an array of normalized words found in the first chapter of AIW.

def alice_normalize(text)
  text.downcase.gsub(/[(,?!"'\:;.)]/, ' ').gsub('-', ' ').split(' ')
end


## QUESTION 2
# take the returned array from alice_normalize and return a new array of unique words.

def alice_unique_words(text)
  alice_normalize(text).uniq
end

puts alice_normalize(sample_text).count
puts alice_unique_words(sample_text).count

## QUESTION 3
# count the number of words in AIW: Chapter 1, and provide the user an option
# to count only unique words.

puts "Would you like to count only unique words? Please say yes or no."
request_unique = gets.chomp

def alice_count_words_unique_optional(text, unique: 'no')
  if unique == "no"
    alice_normalize(text).count
  else
    alice_unique_words(text).count
  end
end

# puts alice_count_words_unique_optional(sample_text, unique: request_unique)

## QUESTION 4
# take a string and return a hash where the keys are normalized words, and the
# values are integers representing how many times that word occurs in the string

def alice_word_count_hash(text)
  count_hash = Hash.new(0)
  keys = alice_normalize(text)
  keys.each do |word|
    count_hash[word] += 1
  end

  count_hash
end

puts alice_word_count_hash(sample_text)


binding.pry
