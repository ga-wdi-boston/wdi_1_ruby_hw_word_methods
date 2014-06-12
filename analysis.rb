# This will give you the contents of the `sample.txt` file as one big string
sample_text = File.read('sample.txt')

test = "THis, is a test!"

#Method 1 to normalize a string of text
#Splits text into an array of characters
#Maps only characters which are letters or spaces to new array
#Joins letters to form words
def normalize(text)
  text.downcase.split("").map! {|i| i if ('a'..'z').include?(i) || i == " "}.join.split(" ")
end

puts normalize(test)


#Method 2
#Call method 1 to remove all punctuation and capitalisation issues
#Map all words to new array only if the array does not already contain that words

