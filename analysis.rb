# This will give you the contents of the `sample.txt` file as one big string
sample_text = File.read('sample.txt')

def normalize(str)
  str.gsub(/[^a-zA-Z\s]/, '').gsub(/\n/, ' ').downcase.split(' ')
end

def all_unique_words(str)
  normalize(str).uniq
end

def word_count(str, unique: false)
  unique ? all_unique_words(str).count : str.split(' ').count
end

def word_freq(str)
  frequencies = {}

  normalize(str).each do |word|
    if frequencies.key?(word.to_sym)
      frequencies[word.to_sym] +=1
    else
      frequencies[word.to_sym] = 1
    end
  end

  frequencies
end


def most_common_word_over_length_threshold (str, thresh: 3)
  frequencies = word_freq(str).delete_if {|k,v| k.length <= thresh}

  frequencies.key(frequencies.values.max)
end

def all_words_of_max_length(str)
  max_length = 0
  arr = []
  all_unique_words(str).each do |word|
    if word.length > max_length
      arr.clear
      max_length = word.length
    end
    arr << word if word.length == max_length
  end
  arr
end

