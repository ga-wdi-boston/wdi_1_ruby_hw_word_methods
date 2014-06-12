# This will give you the contents of the `sample.txt` file as one big string
sample_text = File.read('sample.txt')

def normalize(str)
  str.gsub(/[^a-zA-Z\s]/, '').gsub(/\n/, ' ').downcase.split(' ')
end

def all_unique_words(str)
  normalize(str).uniq
end

def word_count(str, unique: false)
  unique ? all_unique_words(str).count : str.split(' ').count
end

puts word_count(sample_text, unique: true)
