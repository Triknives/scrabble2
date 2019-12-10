class Word
  def initialize(word)
    @word = word
    @one_point = {"A" => 1, "E" => 1, "I" => 1, "O" => 1, "U" => 1, "L" => 1, "N" => 1, "R" => 1, "S" => 1, "T" => 1}
    @two_point = {"D" => 2, "G" => 2}
    @three_point = {"B" => 3, "C" => 3, "M" => 3, "P" => 3}
    @four_point = {"F" => 4, "H" => 4, "V" => 4, "W" => 4, "Y" => 4}
    @five_point = {"K" => 5}
    @eight_point = {"J" => 8, "X" => 8}
    @ten_point = {"Q" => 10, "Z" => 10}
  end


  def scrabble_game()
    new_word = @word.upcase().split("")
    counter = 0
    new_word.each do | l |
      point_hashes = [@one_point, @two_point, @three_point, @four_point, @five_point, @eight_point, @ten_point]
      point_hashes.each do |obj|
        if obj.keys.include?(l)
          counter += obj.fetch(l);
        end
      end
    end
    counter
  end

  # def scrabble_game
  #   new_word = @word.upcase().split("")
  #   counter = 0
  #   new_word.each do | l |
  #     if l == "Q" || l == "Z"
  #       counter += @ten_point.fetch("Q")
  #     elsif l == "J" || l == "X"
  #       counter += @eight_point.fetch("J")
  #     elsif l == "K"
  #       counter += @five_point.fetch("K")
  #     elsif l == "F" || l == "H" || l == "V" || l == "W" || l == "Y"
  #       counter += @four_point.fetch("F")
  #     elsif l == "B" || l == "C" || l == "M" || l == "P"
  #       counter += @three_point.fetch("B")
  #     elsif l == "G" || l == "D"
  #       counter += @two_point.fetch("D")
  #     elsif l == "A" || l == "E" || l == "I" || l == "O" || l == "U" || l == "L" || l == "N" || l == "R" || l == "S" || l == "T"
  #       counter += @one_point.fetch("A")
  #     end
  #   end
  #   counter
  # end


end
