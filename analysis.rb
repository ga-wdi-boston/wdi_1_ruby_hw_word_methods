# This will give you the contents of the `sample.txt` file as one big string
sample_text = File.read('sample.txt')



def normalize(str)
  str.gsub(/\W+/, ' ').downcase.split
end

def remove_duplicates(str)
  normalize(str).uniq
end

def count_words(str, unique = false)
  return normalize(str).length if !unique
  remove_duplicates(str).length
end

def count_occurences_of_words(str)
  words = {}
  count = 0
  normalize(str).each do |word|
    normalize(str).each do |test|
      count += 1 if word == test
    end
    words[word] = count
    count = 0
  end
  words
end

def longest_word(str, min_length = 3)
  words_above_min_length = count_occurences_of_words(str).find_all { |key, val| key.length > min_length }.to_h
  words_above_min_length.select { |key, val| val == words_above_min_length.values.max}.keys
end


str = "Hey! Hey! Hey...There'' Hows hows hows hows it it' HHH  [][][] going going going going goingg?"
puts normalize(str)
puts
puts remove_duplicates(str)
puts
puts count_words(str)
puts count_words(str, true)
puts count_occurences_of_words("Hey! Hey! Hey...There'' Hows  it it' HHH  [][][] going goingg?")
puts longest_word(str)
