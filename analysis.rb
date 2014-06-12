require ='pry'

# This will give you the contents of the `sample.txt` file as one big strin

# method to split string into an array of strings
# makes all array strings downcase and without punct
# returns altered array

def normalize(text_string)
  text_string.downcase.gsub(/[^a-z0-9\s]/i, '').split
end

def no_duplicates(text_string)
  normalize(text_string).uniq
end

sample_text = File.read('sample.txt')

puts no_duplicates(sample_text)
# create method that accepts normalized array
# use .uniq to show unique words
# must also set up variable for altered string


#

