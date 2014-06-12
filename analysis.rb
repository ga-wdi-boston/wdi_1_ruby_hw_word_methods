# This will give you the contents of the `sample.txt` file as one big string
sample_text = File.read('sample.txt')

def normalize(str)
  str.gsub(/[^a-zA-Z\s]/, '').gsub(/\n/, ' ').downcase.split(' ')
end

puts normalize(sample_text)
