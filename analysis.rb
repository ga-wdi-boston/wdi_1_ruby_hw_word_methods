# This will give you the contents of the `sample.txt` file as one big string

sample_text = File.read('sample_copy.txt')

def normalize(text)
  text.downcase.split(/\W+/)
end

def unique(text)
  normalize(text).uniq
end

def count_words(text, unique: false)
  if unique == false
    words = normalize(text)
    words.index(words.last) + 1
  else
    words = unique(text)
    words.index(words.last) + 1
  end
end

def count_occurences(text)
  words = normalize(text)
  num_of_occurences = Hash.new(0)
  words.each do |word|
  num_of_occurences[word] += 1
  end
  return num_of_occurences
end

puts count_occurences(sample_text)




