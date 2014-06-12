require 'pry'

# This will give you the contents of the `sample.txt` file as one big string
sample_text = File.read('sample.txt')

def normalized_text(x)

x.scan(/[\w']+/)


end


words_string = normalized_text(sample_text)



array_text = []
array_text << words_string

# 1. Method that splits
#split_text = sample.text.split(" ")
#array_split_text = []

#2. Put into an array
# array_split_text << split_text


#3. normmal_text = array_split_text.gsub(".", " ").gsub("!", " ").gsub("?", " ")

#4. Method that takes a string and returns an  array of all unique words

# def takes_string(string)
#string.sample
#unique_words = []
#unique_words << string.sample
#string.gsub(".", " ").gsub("!", " ").gsub("?", " ")

#5. Method count how many words are in a string

#def count_words(x)
# x.each do |string|
# string.length
# puts string
# end
#end





binding.pry
