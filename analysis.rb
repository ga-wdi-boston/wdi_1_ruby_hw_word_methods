# This will give you the contents of the `sample.txt` file as one big string

sample_text = File.read('sample.txt')

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

# Returns the most common word of words greater than a given length
# A tie will produce a list of the words that tied.
def most_common_word(text, min_word_length = 3)
  occurences = count_occurences(text)
  grouped_by_num_of_occurences = Hash.new([])
  occurences.each do |word, num_of_occurences|
    if word.length >= min_word_length
    grouped_by_num_of_occurences[num_of_occurences] += [word]
    end
  end
   return grouped_by_num_of_occurences[grouped_by_num_of_occurences.keys.sort.last]
end






