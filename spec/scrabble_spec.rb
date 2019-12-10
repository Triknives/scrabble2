require "rspec"
require "scrabble"

describe('#scrabble_game') do
  it("returns a scrabble score of 1") do
    expect("A".scrabble_game()).to(eq(1))
  end
  it("returns a scrabble score of 2") do
    expect("D".scrabble_game()).to(eq(2))
  end
    it("returns a scrabble score of 3") do
      expect("B".scrabble_game()).to(eq(3))
  end
end
