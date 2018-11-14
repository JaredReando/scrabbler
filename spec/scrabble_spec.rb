require('scrabble')
require('rspec')

describe("scrabble_points method") do

  it("returns a scrabble score for a single letter") do
    expect(scrabble_points('a')).to(eq(1))
  end

  it("returns a scrabble score for two letters") do
    expect(scrabble_points('do')).to(eq(3))
  end

  it("returns false for input exceeding seven letters") do
    expect(scrabble_points('defiance')).to(eq(false))
  end

  it("awards an extra 50 points for using all 7 letters") do
    expect(scrabble_points('rewards')).to(eq(61))
  end


end
