require_relative '../analysis'

describe String do

  before(:all) do
    @string = "The rain in Spain is mainly on the plain."
  end

  describe "#normalize_words" do
    it "splits a string into an array of normalized words" do
      expect(@string.normalize_words).to eq([
        'the',
        'rain',
        'in',
        'spain',
        'is',
        'mainly',
        'on',
        'the',
        'plain'
        ])
    end
  end

  describe "#unique_words" do
    it "returns an array of all unique words" do
      expect(@string.unique_words).to eq([
        'the',
        'rain',
        'in',
        'spain',
        'is',
        'mainly',
        'on',
        'plain'
        ])
    end
  end

  describe "#word_count" do
    it "counts how many words are in a string" do
      expect(@string.word_count).to eq 9
    end
    it "optionally returns only count of unique words" do
      expect(@string.word_count({ unique: true })).to eq 8
    end
  end

  describe "#word_report" do
    it "returns a hash where keys are normalized words, values are occurrences" do
      expect(@string.word_report).to eq({
        :the => 2,
        :rain => 1,
        :in => 1,
        :spain => 1,
        :is => 1,
        :mainly => 1,
        :on => 1,
        :plain => 1
        })
    end
  end

  describe "#most_common_words" do
    it "takes an optional threshold parameter" do
      expect(String.instance_method(:most_common_words).parameters.include?([:opt, :threshold])).to be true
    end
    it "finds the most common words in the string with length greater than or equal to optional threshold" do
      expect(@string.most_common_words(3)).to eq(["the"])
    end
    it "finds the most common words in the string with length greater than three by default" do
      expect(@string.most_common_words).to eq(["rain", "spain", "mainly", "plain"])
    end
  end

end