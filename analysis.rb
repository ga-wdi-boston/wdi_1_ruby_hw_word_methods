# This will give you the contents of the `sample.txt` file as one big string
require 'pry'

def normalize
  sample_text = []
  sample_text = File.read('sample.txt')
  str = sample_text
  str.downcase.gsub /\W+/, ' '
end

# How can I simplify this?
# How can I reference the normalize method in the word_count method?
def word_count
  words = []
  sample_text = File.read('sample.txt')
  words = sample_text.split(/[^a-zA-Z]/)
  freqs = Hash.new(0)
  words.each { |word| freqs[word] += 1 }
  freqs = freqs.sort_by {|x,y| y }
  freqs.reverse!
  freqs.each {|word, freq| puts word+' '+freq.to_s}
end

binding.pry
