# This will give you the contents of the `sample.txt` file as one big string
sample_text = File.read('sample.txt')


#Method that splits a string into an array and normalizes all the sample_text
def clean_text(sample_text)
  sample_text.tr('^A-Za-z0-9 ', '').split.map(&:downcase)
end

#Method that takes a string and returns an array of all *unique* words in it, ignoring punctuation and capitalization differences.
def unique_words(sample_text)
  clean_text(sample_text).uniq
end

#Method that counts how many words are in a string. This method should also provide the *option* to count unique words instead of total words.
def word_count(sample_text, options = {})
  unique = options.key?(:unique) ? options.delete(:unique) : true

  clean_text(sample_text).length
  unique ? clean_text(sample_text).uniq.length : clean_text(sample_text).length
end

#Method that takes a string and returns a hash where the keys are normalized words, and the values are integers representing how many times that word occurs in the string.
def word_score(sample_text)
  word_score = Hash.new(0)

  clean_text(sample_text).each do |v|
    word_score[v] +=1
  end

  final_group = word_score.each do |k, v|
  end
end

#Method that finds the most common word in a string that is longer than a particular "length threshold". The threshold should be optional, and default to 3 characters (i.e. words of 3 characters or less will not be considered). It's up to you how to handle multiple words being "tied" for most common.
def popular_long_words(sample_text)
  popular_long_words = Hash.new()

  clean_text(sample_text).each do |v|
    popular_long_words[v].length
  end

  final_group = popular_long_words.each do |k, v|
  end

  #selects = word_score(sample_text).sort {|k,v| v[1]<=>k[1]}
  #selects.drop_while.length < 3
end



puts "All Words"
puts clean_text(sample_text)
puts
puts "---------------------------------------------------"
puts "Unique Words"
puts
puts unique_words(sample_text)
puts
puts "---------------------------------------------------"
puts "Word Count"
puts
puts "All words:"
puts word_count(sample_text, unique: false)
puts
puts "Unique words:"
puts word_count(sample_text, unique: true)
puts
puts "---------------------------------------------------"
puts "Word Score"
puts
puts word_score(sample_text)
puts
puts "---------------------------------------------------"
puts "Popular Long Words"
puts
puts popular_long_words(sample_text)

