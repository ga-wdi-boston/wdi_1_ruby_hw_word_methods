# This will give you the contents of the `sample.txt` file as one big string
sample_text = File.read('sample.txt')

# makes all words lower case and scrubs punctuation
def normalize(text)
  text.downcase.gsub(/[^a-z ]/, '')
end


puts normalize(sample_text)
