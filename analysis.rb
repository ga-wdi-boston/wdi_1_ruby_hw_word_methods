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


#Question1




binding.pry







