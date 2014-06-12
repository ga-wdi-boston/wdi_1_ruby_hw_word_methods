# This will give you the contents of the `sample.txt` file as one big string
sample_text = File.read('sample.txt')

def normalize(str)
  str.gsub(/[^a-zA-Z\s]/, '').gsub(/\n/, ' ').downcase.split(' ')
end

def all_unique_words(str)
  normalize(str).uniq
end

puts all_unique_words(sample_text)
