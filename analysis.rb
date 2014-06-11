# This will give you the contents of the `sample.txt` file as one big string
sample_text = File.read('sample.txt')

#Method that splits a string into an array and normalizes all the sample_text


def clean_text(sample_text)
  stripped_text = sample_text.gsub(",","")
  stripped_text = stripped_text.gsub("?","")
  stripped_text = stripped_text.gsub(".","")
  stripped_text = stripped_text.gsub(";","")
  stripped_text = stripped_text.gsub(":","")
  stripped_text = stripped_text.gsub("(","")
  stripped_text = stripped_text.gsub(")","")
  stripped_text = stripped_text.gsub('"',"")
  stripped_text = stripped_text.gsub("'","")
  stripped_text = stripped_text.gsub("!","")
  stripped_text = stripped_text.gsub("-","")
  stripped_text.split.map(&:downcase)
end


puts clean_text(sample_text)
