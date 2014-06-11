#Method that splits a string (e.g. the text from `sample.txt`)
#into an array of normalized words. "Normalized"
#here means that the words should be all lowercase
#and scrubbed of any punctuation such as periods or parentheses.

# This will give you the contents of the `sample.txt` file as one big string

sample_text = File.read('sample.txt')

def normalize(text)
  text.downcase.gsub(/[^a-z0-9\s]/i, '').split
end

puts normalize(sample_text)
