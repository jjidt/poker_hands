
def poker_hand(hand)
  card_value = {'1' => 1,
                '2' => 2,
                '3' => 3,
                '4' => 4,
                '5' => 5,
                '6' => 6,
                '7' => 7,
                '8' => 8,
                '9' => 9,
                '10' => 10,
                'J' => 11,
                'Q' => 12,
                'K' => 13,
                'A' => 14}

  number_cards = []
  hand.each do |i|
    number_cards << i.split("")[0]
  end

  duplicates = Hash.new(0)

  number_cards.each do |element|
    duplicates[element] += 1
  end

  if duplicates.length ==3 && duplicates.has_value?(3)
    "3 of a kind"
  elsif duplicates.length ==4
    "1 pair"
  elsif duplicates.length ==3
    "2 pair"
  end
end
