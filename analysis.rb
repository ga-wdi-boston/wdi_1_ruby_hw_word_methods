require 'pry'
# This will give you the contents of the `sample.txt` file as one big string
sample_text = File.read('sample.txt')

#Question1
# To do this, you must downcase all letters, remove all non alpha-numerica
# then delimit the list by space to make the words.  downcase, gsub all
# characters that are not a space or lowercase letter then going a generic
# split will get you there

#array1 = sample_text.downcase.gsub(/[^a-z ]/, ' ').split

def strip_text(passage)
  passage.downcase.gsub(/[^a-z ]/, ' ').split
end


#Question2
# the uniq function can just build off of the previous question...

def strip_text_unique(passage)
  strip_text(passage).uniq
end


#Question3
# in order to invoke only the unique word count, you must write 'unique: true'
def word_count(passage, unique: false)
  !unique ? strip_text(passage).count : strip_text_unique(passage).count
end


binding.pry









