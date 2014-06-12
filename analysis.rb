

def normalize_text(text_file)
  text_file.downcase.gsub(/[^a-z0-9\s]/i, '')
end

def unique(text_list)
  text_list.uniq
end

def find_length(text_list, full_text)
  option_1 = text_list.length + 1 if full_text == true
  option_2 = text_list.uniq.length + 1 if full_text == false
end

# def unique(text_list) #text_list is an array
#   unique_words = []
#   word_cntr = text_list.length #counter as index_2 that goes to end of array
#   text_list.each do  | index, word |
#     word << unique_words if text_list[index] != text_list[word_cntr]
#     word_cntr -= 1
#   end
# end

# Prob 3. split_word_text.length + 1 => word count by length of array
#         unique_words.length + 1 => '  ' of unique word array


sample_text = File.read('sample.txt') #opens text file
normalized_words = normalize_text(sample_text) #returns normalized text
list_all_words = normalized_words.split #array of normalized words
#puts unique(list_all_words)
