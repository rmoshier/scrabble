require './scrabble.rb'

describe Scrabble do

  describe "#self.score" do
    it "returns total score value of given word" do
      expect(Scrabble.score("example")).to eq 18
    end
  end

  describe "#self.score" do
    it "returns total score value of a given word" do
      expect(Scrabble.score("cat")).to eq 5
    end
  end

end
