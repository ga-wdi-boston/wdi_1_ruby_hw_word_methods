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

#Method 2 to map only unique words to a new array - not yet working
def unique(text)
  normalized_text = normalize(text)
  unique_array = []
  normalized_text.map! {|word| word unless unique_array.include?(word)}
end

puts unique(test)

#Method 3 counter - working for regular string of text
def word_count(text, unique: false)
  normalized_text = normalize(text)
  unique_text = unique(text)
  if unique == false
    normalized_text.length
  else
    unique_text.length
  end
end

puts word_count(test, unique: true)


