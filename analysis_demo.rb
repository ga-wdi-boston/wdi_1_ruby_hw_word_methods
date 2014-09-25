require_relative "analysis"

sample_text = File.read('sample.txt')

puts sample_text.normalize_words
puts sample_text.unique_words
puts sample_text.word_count({ unique: true })
puts sample_text.word_report
puts sample_text.most_common_words