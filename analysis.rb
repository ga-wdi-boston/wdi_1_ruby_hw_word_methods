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

def magic_occurrence(text)
  words = []
  clean_text = text.downcase.gsub(/[.?!,()";:]|(--)/,"")
  words += clean_text.strip.split(" ")

  words_and_lengths = Hash.new(0)
  words.each { |word| words_and_lengths[word] += 1 }
  words_and_lengths
end

# Question 5
 def magic_common(text,length=3)
  words = []
  words_by_length = []
  clean_text = text.downcase.gsub(/[.?!,()";:]|(--)/,"")
  words += clean_text.strip.split(" ")
  words.map do |i|
    if i.length > length
      words_by_length << i
    end
  end
  words_by_length.group_by {|a| a }.sort_by{|a,b| b.size<=>a.size}.first[0]
end

# Question 6

def magic_max_length(text)
  words = []
  clean_text = text.downcase.gsub(/[.?!,()";:]|(--)/,"")
  words += clean_text.strip.split(" ")

  longest = words.max_by {|word| word.length }
  longest
  # Need to create an array where values == longest.length
end


