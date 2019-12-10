class String
  def scrabble_game()
    self.upcase()
    letterscore = 0
    onepointarray = ["A", "E", "I", "O", "U", "L", "N", "R", "S", "T" ]
    twopointarray = ["D", "G" ]
    threepointarray = ["B", "C", "M", "P"  ]
    fourpointarray = ["F", "H", "V", "W", "Y"]
    fivepointarray = ["K"]
    eightpointarray = ["J", "X" ]
    tenpointarray = ["Q", "Z" ]

    if onepointarray.include?(self)
      letterscore += 1
    elsif twopointarray.include?(self)
      letterscore += 2
    elsif threepointarray.include?(self)
      letterscore += 3
    end
    letterscore

  end
end
