# This will give you the contents of the `sample.txt` file as one big string

sample_text = File.read('sample.txt')


def normalize(text)
  text.downcase.gsub("'","").gsub(/[^a-z ]/, ' ').split
end

#puts normalize(sample_text)


def unique_words(text)
  normalize(text).uniq
end

#puts unique_words(sample_text)

def word_count(text, unique: false)
  unique ? unique_words(text).count : normalize(text).count
end
#puts word_count(sample_text, unique: true)

def word_frequency(text)
  norm_array = normalize(text).to_a
  freq = { }
  norm_array.each_with_object(Hash.new(0)){|key,hash| hash[key] += 1}
end
#puts word_frequency(sample_text)

def threshold(text, threshold: false)
 thresh = (word_frequency(text).select { |k, v| v > 4})
  threshold ? thresh.reject {|k,v| k.length < 6} : thresh.reject {|k,v| k.length < 4}
end
puts threshold(sample_text, threshold: true)

  #threshold_array = (normalize(text).to_a
  #thresh = { }
  #threshold_array.each_with_object(Hash.new(0)){|key,hash| hash[key.length(key)] += 1}

  #thresh = (word_frequency(text).select { |k, v| k.length >3, v > 15})
  #thresh = (word_frequency(text).select { |k, v| puts k if v ==hash.values.max})
  #thresh = (word_frequency(text).select { |k, v| puts k if v ==hash.values.max && hash.values.length >3})
  #if
    #normalize(text).length > 3

  #threshold ? v.length >3: normalize(text).count
  #threshold ? word_frequency(text).length >3 : normalize(text).count
#end


#.inspect

  #Hash.new { |hash, key| hash[key] =  [unique_words(sample_text)]unique_words(sample_text).count }
  #normalize(text).count
  #frequency = {normalize(text).to_s => normalize(text).count}
  #normalize(text) = normalize(text).count #key (need to separate)
  #values = .count

#puts unique_words(sample_text).split

