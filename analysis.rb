require 'pry'

# This will give you the contents of the `sample.txt` file as one big string
sample_text = File.read('sample.txt')

## QUESTION 1

def alice_normalize(text)
  text.downcase.gsub(/[(,?!"'\:;.)]/, ' ').gsub('-', ' ').split(' ')
end

puts alice_normalize(sample_text)

## QUESTION 2

def alice_unique_words(text)
  alice_normalize(text).uniq
end

puts alice_unique_words(sample_text)

binding.pry
