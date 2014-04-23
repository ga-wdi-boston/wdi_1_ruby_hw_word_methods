# This will give you the contents of the `sample.txt` file as one big string
sample_text = File.read('sample.txt')

# puts words within string into an array
def split_text(file)
  file.split
end

# iterates over array to find frequency of word
def find_unique_words(string)
  string_no_special = string.gsub(/[\,\.]/, ' ')
  words = string_no_special.downcase.split
  words.uniq.sort
end

# puts find_unique_words(sample_text)
