require './scrabble.rb'

describe Scrabble do

  describe "#self.score" do
    it "responds to 'score'" do
      expect(Scrabble).to respond_to :score
    end

    it "returns total score value of given word" do
      expect(Scrabble.score("example")).to eq 18
    end

    it "returns total score value of a given word" do
      expect(Scrabble.score("cat")).to eq 5
    end

    it "returns an integer" do
      expect(Scrabble.score("cat")).to be_a Fixnum
    end
  end
end
#it seems like this shouldn't be described as the same thing in line 5
  # describe "#self.score" do
  #   it "returns nil when a number is inputted" do
  #     expect(Scrabble.score("123")).to eq "nil"
  #   end
  # end

  # describe "#self.highest_score_from" do
  #   it "it returns the word in the array with the highest score" do
  #     expect(Scrabble.highest_score_from(["cat", "mat", "kat"])).to eq "kat"
  #   end
  # end
