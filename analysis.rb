# This will give you the contents of the `sample.txt` file as one big string
sample_text = File.read('sample.txt')

# split and normalise text
def split_normalise(text)
  text.downcase.gsub(/[^a-z]/, ' ').gsub("'", '').split
end

puts split_normalise(sample_text)

# method to return unique words
def unique_words(text)
  split_normalise(text).uniq
end

puts unique_words(sample_text)

# method for text count
def word_count(text, unique: false)
  if unique == false
    split_normalise(text).split.count
  else
    unique_words(text).count
  end
end

puts word_count(sample_text, unique: true)

# method for frequency of words in a hash
def word_freq(text)
  frequency = {}
  unique_words(text).each do |word|
    frequency[word] = 0
  end
  split_normalise(text).each do |word|
    frequency[word] += 1
  end
  frequency
end


puts word_freq(sample_text)


# method to find most common words in a string longer than a threshold
def most_com_word(text, min: 3)
  freq = word_freq(text).delete_if { |x, y| x.length} <= min}
end

puts most_com_word(sample_text, min: 4)

#def com_words(text, min: 3)
#  freq = word_freq(text).delete_if { |x, y| x.length <= min}
#  freq.key(freq.values.max)
#end

#puts com_words(sample_text, min: 4)
