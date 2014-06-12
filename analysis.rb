# This will give you the contents of the `sample.txt` file as one big string

sample_text = File.read('sample.txt')

##reates normalise method: splits string to array, strips punctuation
def normalize(text)
  text.downcase.gsub("'","").gsub(/[^a-z ]/, ' ').split
end

#creates new array with normalized, unique words
def unique_words(text)
  normalize(text).uniq
end

#creates word count & condition for unique v. total words
def word_count(text, unique: false)
  unique ? unique_words(text).count : normalize(text).count
end

#creates word frequency hash, with k as words and v as frequency
def word_frequency(text)
  norm_array = normalize(text).to_a
  freq = { }
  norm_array.each_with_object(Hash.new(0)){|key,hash| hash[key] += 1}
end

#creates threshold for word frequency,
#setting lower bound on frequency and option for length threshold
def threshold(text, threshold: false)
 thresh = (word_frequency(text).select { |k, v| v > 4})
 threshold ? thresh.reject {|k,v| k.length < 6} : thresh.reject {|k,v| k.length < 4}
end
#puts threshold(sample_text, threshold: true)
