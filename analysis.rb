# This will give you the contents of the `sample.txt` file as one big string
require 'pry'

def normalize
  sample_text = []
  sample_text = File.read('sample.txt')
  str = sample_text
  str.downcase.gsub /\W+/, ' '
end

binding.pry
