#require 'pry'
# This will give you the contents of the `sample.txt` file as one big string
sample_text = File.read('sample.txt')

#Question1
# To do this, you must downcase all letters, remove all non alpha-numerica
# then delimit the list by space to make the words.  downcase, gsub all
# characters that are not a space or lowercase letter then going a generic
# split will get you there

#array1 = sample_text.downcase.gsub(/[^a-z ]/, ' ').split

def strip_text(passage)
  passage.downcase.gsub(/[^a-z ]/, ' ').split#split makes and array
end


#Question2
# the uniq function can just build off of the previous question...

def strip_text_unique(passage)
  strip_text(passage).uniq#unique
end


#Question3
# in order to invoke only the unique word count, you must write 'unique: true'
def word_count(passage, unique: false)
  !unique ? strip_text(passage).count : strip_text_unique(passage).count# words = rows here
end

#Question4
# this initializes a new hash at 0, for each object in the array, 1 gets added
def make_hash_with_count(passage)
  array_from_excerpt = strip_text(passage)#input from first question
  names_and_counts = Hash.new 0 #initializes at 0
  array_from_excerpt.each do |word|
    names_and_counts[word] += 1#for all subs. occurences, add 1
  end
  names_and_counts # must have the last line return the array!
end

#Question5
def hash_most_common(passage, minlength: 3)#minlength is 3, but can be changed by user
  hashtest = make_hash_with_count(passage)
  hashtest.delete_if {|k,v| k.length < minlength}# comparison can act on array
  hashtest.sort_by {|k,v| v}.last# |key,value| what sorted by (default is asc) and last item
end

#Question6
def hash_longest_key(passage)
  hashtest = make_hash_with_count(passage)
  longest_word_array = hashtest.sort_by {|k,v| -k.length}# |key,value| what sorted by (default is asc) and last item
  #cannot find a way to get my delete_if statement to understand the key lengths
end

#binding.pry













