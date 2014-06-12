# This will give you the contents of the `sample.txt` file as one big string
sample_text = File.read('sample.txt')

def normalize(str)
  str.gsub(/\W+/, ' ').downcase.split
end

def remove_duplicates(str)
  normalize(str).uniq
end

def count_words(str, unique = false)
  unique ? remove_duplicates(str).length : normalize(str).length
end

def count_occurences_of_words(str)
  Hash[remove_duplicates(str).map {|word| [word, normalize(str).count(word)]}]
end

def most_common_word(str, min_length = 3)
  words_above_min_length = count_occurences_of_words(str).find_all { |key, val| key.length >= min_length }.to_h
  words_above_min_length.select { |key, val| val == words_above_min_length.values.max}.keys
end

def words_equal_to_longest(str)
  remove_duplicates(str).group_by(&:size).max.last
end
