# This will give you the contents of the `sample.txt` file as one big string
sample_text = File.read('sample.txt')

class String
  def normalize_words
    self.split(" ").map do |word|
      word.downcase.gsub(/[^a-z]/, '')
    end
  end

  def unique_words
    self.normalize_words.uniq
  end

  def word_count(options={})
    if options[:unique]
      self.unique_words.length
    else
      self.normalize_words.length
    end
  end

  def word_report
    report = Hash.new
    self.unique_words.each do |word|
      report[word.to_sym] = self.normalize_words.count(word)
    end
    report
  end

  def most_common_words(threshold=4)
    filtered_report = self.word_report.select do |k, v|
      k.length >= threshold
    end
    most_common_words = filtered_report.map do |k, v|
      k.to_s if v == filtered_report.values.max
    end
    most_common_words.compact
  end

end