#Method that splits a string (e.g. the text from `sample.txt`)
#into an array of normalized words. "Normalized"
#here means that the words should be all lowercase
#and scrubbed of any punctuation such as periods or parentheses.

# This will give you the contents of the `sample.txt` file as one big string

sample_text = File.read('sample.txt')

#TEXT = sample_text

def normalize(text)
  text.downcase.gsub("'","").gsub(/[^a-z ]/, ' ').split
end

#puts normalize(sample_text)


def unique_words(text)
  normalize(text).uniq
end

#puts unique_words(sample_text)

def word_count(text, unique: false)
  unique ? unique_words(text).count : normalize(text).count
end
puts word_count(sample_text, unique: true)


#Method that takes a string and returns a hash
#where the keys are normalized words,
#and the values are integers representing how many times that word
#occurs in the string.

