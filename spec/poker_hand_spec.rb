require('rspec')
require('poker_hand')

describe("poker_hand") do
  it("takes a poker hand with two of the same numbered cards and returns 1 pair") do
    poker_hand(["3S", "2D", "7H", "8D", "2S"]).should(eql("1 pair"))
  end

  it("takes a poker hand with 2 cards in one rank and 2 other cards in another rank") do
    poker_hand(["3S", "3D", "4S", "4D", "7H"]).should(eq("2 pair"))
  end

  it("takes a poker hand with 3 of a kind and returns '3 of a kind'") do
    poker_hand(["3S", "3D", "3H", "4D", "7H"]).should(eq("3 of a kind"))
  end
end
