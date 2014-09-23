class Scrabble

  def initialize(word)
    @word = word
  end

  @@letter_variable = {
    "A" => 1,
    "E" => 1,
    "I" => 1,
    "O" => 1,
    "U" => 1,
    "L" => 1,
    "N" => 1,
    "R" => 1,
    "S" => 1,
    "T" => 1,
    "D" => 2,
    "G" => 2,
    "B" => 3,
    "C" => 3,
    "M" => 3,
    "P" => 3,
    "F" => 4,
    "H" => 4,
    "V" => 4,
    "W" => 4,
    "Y" => 4,
    "K" => 5,
    "J" => 8,
    "X" => 8,
    "Q" => 10,
    "Z" => 10
  }

  def self.score(word)
    value_array = []
    word.each_char { |l| value_array << @@letter_variable[l.upcase] }
    sum = 0
    value_array.each {|a| sum += a}
    sum
  end

  # def self.highest_score_from(array_of_words) #returns the word in the array with the highest score.
  #   array_of_words = []
  #   array_of_words.max_by { |a| a.score }
  # end
end
