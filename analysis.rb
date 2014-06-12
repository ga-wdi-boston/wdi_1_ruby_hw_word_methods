# This will give you the contents of the `sample.txt` file as one big string
require 'pry'

def normalize
  sample_text = File.read('sample.txt')
  sample_text.split
end

binding.pry
