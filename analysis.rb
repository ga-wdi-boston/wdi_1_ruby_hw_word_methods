require 'pry'
# This will give you the contents of the `sample.txt` file as one big string
sample_text = File.read('sample.txt')

# Question 1

def magic_split(text)
  words = []
  clean_text = text.downcase.gsub(/[.?!,()";:]|(--)/,"")
  words += clean_text.strip.split(" ")
end


# Question 2

def magic_unique(text)
  words = []
  clean_text = text.downcase.gsub(/[.?!,()";:]|(--)/,"")
  words += clean_text.strip.split(" ")
  words = words.uniq
end

# Question 3

def magic_counting(text,unique: false)
  words = []
  clean_text = text.downcase.gsub(/[.?!,()";:]|(--)/,"")
  words += clean_text.strip.split(" ")
  if unique == true
    words.uniq.length
  else
    words.length
  end
end

# Question 4







binding.pry
