
def poker_hand(hand)
  card_value = {'1' => 10,
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
  suit_cards = []
  hand.each do |i|
    number_cards << i.split("")[0]
    suit_cards << i.split("")[-1]
  end

  duplicates = Hash.new(0)

  number_cards.map! do |i|
    card_value[i]
  end

  number_cards.sort!

  starting_card = number_cards[0].to_i

  comparison_cards = [starting_card, (starting_card+1), (starting_card+2), (starting_card+3), (starting_card+4)]


  number_cards.each do |element|
    duplicates[element] += 1
  end

  if duplicates.length ==3 && duplicates.has_value?(3)
    "3 of a kind"
  elsif duplicates.length ==2 && duplicates.has_value?(4)
    "4 of a kind"
  elsif duplicates.length ==2 && duplicates.has_value?(3) && duplicates.has_value?(2)
    "full house"
  elsif duplicates.length ==4
    "1 pair"
  elsif duplicates.length ==3
    "2 pair"
  elsif number_cards == comparison_cards
    if suit_cards.uniq.length ==1 && starting_card ==10
      "royal flush"
    elsif suit_cards.uniq.length == 1
      "straight flush"
    else
      "straight"
    end
  elsif suit_cards.uniq.length ==1
    "flush"
  else
    "high card"
  end
end
