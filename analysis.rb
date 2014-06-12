# This will give you the contents of the `sample.txt` file as one big string
sample_text = File.read('sample.txt')

#Method that splits a string into an array and normalizes all the sample_text


def clean_text(sample_text)
  sample_text.tr('^A-Za-z0-9 ', '').split.map(&:downcase)
end

puts clean_text(sample_text)

