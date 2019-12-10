require "rspec"
require "scrabble"

describe('#scrabble_game') do
  it("returns a scrabble score of 1") do
    q = Word.new("q")
    expect(q.scrabble_game).to(eq(10))
  end
  it("returns a scrabble score of 1") do
    j = Word.new("j")
    expect(j.scrabble_game).to(eq(8))
  end
  it("returns a scrabble score of 1") do
    word = Word.new("epicodus")
    expect(word.scrabble_game).to(eq(13))
  end
  it("returns a scrabble score of 1") do
    word = Word.new("i love coding")
    expect(word.scrabble_game).to(eq(18))
  end
end
