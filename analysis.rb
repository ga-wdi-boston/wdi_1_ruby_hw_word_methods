require 'pry'
# This will give you the contents of the `sample.txt` file as one big string
sample_text = File.read('sample.txt')

# Question 1

def magic_split(text)
  words = []
  new_text = text.downcase.gsub(/[.?!,()";:]/," ").gsub(/--/," ") # need --
  words << new_text.strip.split(" ")
end

puts magic_split(sample_text)









binding.pry
