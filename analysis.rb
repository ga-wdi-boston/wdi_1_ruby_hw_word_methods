# This will give you the contents of the `sample.txt` file as one big string
sample_text = File.read('sample.txt')
normalized_text = sample_text.downcase.gsub(/[^a-z0-9\s]/i, '')
split_word_text = lwrcase_text.split #tested & IS array of indiv words

