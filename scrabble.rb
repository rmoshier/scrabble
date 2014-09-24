# Note that it’s better to use fewer tiles, so if the top score is tied between multiple words, pick the one with the fewest letters.
# But there is a bonus for using all seven letters. If one of the highest scores uses all seven letters, pick that one
# But if the there are multiple words that are the same score and same length, pick the first one in supplied list

# require 'io/console'

class Scrabble
  attr_accessor :word, :array_of_words

  def initialize
    # @word = word
    # @array_of_words = ["cat", "mat", "kat", "vat", "hat"]
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

  def self.highest_score_from(array_of_words) #returns the word in the array with the highest score.
    # max_value = array_of_words.max_by { |a| self.score(a) }
    h = {}
    array_of_words.each { |word| h[word] = score(word) }
    max_value = h.values.max
    highest_word_score_array = []
    h.each do |k,v|
      if v == max_value
        highest_word_score_array << k
      end
    end
    shortest_word = count_words(highest_word_score_array)
    return shortest_word
  end

  def self.count_words(a) #start by putsing stuff. thinks there should be a parameter where there is not one.
    h = {}
    a.each { |word| h[word] = word.length }
    min_value = h.values.min
    puts min_value
    return h.key(min_value)
  end
end
