require('rspec')
require('poker_hand')

describe("poker_hand") do
  it("takes a poker hand with two of the same numbered cards and returns 1 pair") do
    poker_hand(["3S", "2D", "7H", "8D", "2S"]).should(eq("1 pair"))
  end

  it("takes a poker hand with 2 cards in one rank and 2 other cards in another rank") do
    poker_hand(["3S", "3D", "4S", "4D", "7H"]).should(eq("2 pair"))
  end

  it("takes a poker hand with 3 of a kind and returns '3 of a kind'") do
    poker_hand(["3S", "3D", "3H", "4D", "7H"]).should(eq("3 of a kind"))
  end

  it("takes a poker hand with 4 of a kind and returns '4 of a kind'") do
    poker_hand(["2S", "2H", "2D", "2C", "5H"]).should(eq("4 of a kind"))
  end

  it("takes a poker hand with a pair and 3 of a kind and returns 'full house'") do
    poker_hand(["2S", "2H", "2D", "5C", "5H"]).should(eq("full house"))
  end

  it("takes a poker hand with cards in numerical order and returns 'straight'") do
    poker_hand(["9H", "10H", "JS", "QC", "KH"]).should(eq("straight"))
  end

  it("takes a poker hand with 5 cards of the same suit and returns 'flush'") do
    poker_hand(["2H", "4H", "7H", "JH", "10H"]).should(eq("flush"))
  end
end
