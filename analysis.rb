# This will give you the contents of the `sample.txt` file as one big string
sample_text = File.read('sample.txt')

def normalize(text)
  # lowercase and remove punctuation then push it into a string.
  # puctuations = [".", "?", "/", "(", ")", ";", ":"] #gsub is too long. thinking of ways to loop.
  text.downcase.gsub(".",'').gsub("?",'').gsub("/",'').gsub("(",'').gsub(")",'').gsub(";",'').gsub(":",'').gsub(",",'').gsub("\"",'').gsub("!",'').gsub("-",'').gsub("'",'').split
end

def unique_words(text)
  normalize(text).uniq
end

def count_words(text, type: 'total')
  type == 'unique' ? unique_words(text).length : normalize(text).length
end

def count_words_occurence(text)
  normalize(text).each_with_object(Hash.new(0)) { |text,counts| counts[text] += 1 }
end


puts count_words(sample_text)
puts count_words(sample_text, type: 'unique')

puts count_words_occurence(sample_text)
