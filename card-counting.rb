
CARDS_IN_A_DECK = 52

# def more_than_four_of_each_rank_played(played_cards)
# #HINT: use hash
# end

def card_count(input)
  count = 0

    return false if input.size > CARDS_IN_A_DECK

  played_cards = input.chars

  played_cards.each do |input|
    if input == '2' || input == '3' || input == '4' || input == '5' || input == '6'
      count += 1
    elsif input == 'T' || input == 'J' || input == 'Q' || input == 'K' || input == 'A'
      count -= 1
    end
  end

  # return false if more_than_four_of_each_rank_played(played_cards)
  #
  # count += case card
  # when '2', '3', '4',  '5', '6'
  #   1
  # when 'T', 'J', 'Q', 'K', 'A'
  #   -1
  # else
  #   0
  # end

    return count
end



puts card_count('K2T6AA') #- 2
puts card_count('798TT23') # 0
puts card_count('235T2')# 3
