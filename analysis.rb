# This will give you the contents of the `sample.txt` file as one big string
sample_text = File.read('sample.txt')

test = "THis, is a test! this is is is"

#Method 1 to normalize a string of text
#Splits text into an array of characters
#Maps only characters which are letters or spaces to new array
#Joins letters to form words
def normalize(text)
  text.downcase.split("").map! {|i| i if ('a'..'z').include?(i) || i == " "}.join.split(" ")
end

puts normalize(test)

#Method 2 to map only unique words to a new array
def unique(text)
  normalize(text).uniq
end

puts unique(test)

#Method 3 counter
def word_count(text, unique: false)
  unique ? unique(text).length : normalize(text).length
end

puts word_count(test, unique: true)

#Method 4 - instances of each word
def word_instances(text)
  instances = Hash.new(0)
  normalize(text).each do |word|
    instances[word] += 1
  end
  instances
end

#Method 4 - Take 2
def word_instances(text)
  instances = Hash.new(0)
  normalized_words = normalize(text)
  unique(text).each do |word|
    instances[word] = normalized_words.count(word)
  end
  instances
end

puts word_instances(test)

#Method 5 - Most common word in a string
def most_common(text, length: 3)
  new_instances = word_instances(text).delete_if {|k,v| k.length < length}
  new_instances.max_by {|k,v| v}
end

puts most_common(test)

#Method 6 - Bonus method

def longest_words(text)
  greatest_length = unique(text).map { |word| word.length}

