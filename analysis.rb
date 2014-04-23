# This will give you the contents of the `sample.txt` file as one big string
sample_text = File.read('sample_copy.txt')

def normalize(text)
  text.downcase.split(/\W+/)
end

def unique(text)
  normalize(text).uniq
end



