require 'pry'

CARDS = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'j', 'q', 'k', 'a']
SUIT = ['h', 'd', 'c', 's']
MAX_SCORE = 21
MIN_STAY_SCORE = 17
ROUNDS = 5

def prompt(msg)
  puts "==> #{msg}"
end

def display_score(msg)
  puts "<> #{msg}"
end

def joinor(array, separator = ', ', conjunction = 'and')
  return_array = array.dup
  return_array[-1] = conjunction + ' ' + return_array[-1].to_s
  if return_array.length > 2
    return_array.join(separator)
  elsif return_array.length < 2
    array.join
  else
    return_array.join(' ')
  end
end

def remove_from_deck(deck, card)
  deck.delete(card)
end

def deal_cards(deck, person, number_of_cards)
  number_of_cards.times do
    card = deck.sample
    person[:hand] << card
    remove_from_deck(deck, card)
  end
  calculate_score(person)
end

def score(card)
  case card
  when 'a' then 11
  when 'j' then 10
  when 'q' then 10
  when 'k' then 10
  else card.to_i
  end
end

def calculate_score(person)
  values = person[:hand].map { |card| card[1] }

  sum = 0
  values.each do |value|
    sum += score(value)
  end

  values.select { |value| value == "a" }.count.times do
    sum -= 10 if sum > MAX_SCORE
  end

  person[:score] = sum
end

def display_name(card)
  case card
  when 'a' then 'Ace'
  when 'j' then 'Jack'
  when 'q' then 'Queen'
  when 'k' then 'King'
  else card
  end
end

def display_current_status(player, dealer)
  system 'clear'
  display_score "Dealer has: #{display_name(dealer[:hand][0][1])} and ?"
  puts ''
  display_score "You have: #{display_hand(player)}"
  display_score "Your score: (#{player[:score]})"
  puts ''
end

def bust?(person)
  person[:score] > MAX_SCORE
end

def display_hand(person)
  all_cards = person[:hand].map do |card|
    display_name(card[1])
  end
  joinor(all_cards)
end

def detect_result(dealer, player)
  if player[:score] > MAX_SCORE
    :player_busted
  elsif dealer[:score] > MAX_SCORE
    :dealer_busted
  elsif dealer[:score] < player[:score]
    :player
  elsif dealer[:score] > player[:score]
    :dealer
  else
    :tie
  end
end

def display_winner(dealer, player)
  result = detect_result(dealer, player)

  case result
  when :player_busted
    prompt "You busted! Dealer wins!"
  when :dealer_busted
    prompt "Dealer busted! You win!"
  when :player
    prompt "You win!"
  when :dealer
    prompt "Dealer wins!"
  when :tie
    prompt "It's a tie!"
  end
end

def display_results(dealer, player)
  system 'clear'
  display_score "Dealer hand: #{display_hand(dealer)}"
  display_score "Dealer score: #{dealer[:score]}"
  puts ''
  display_score "Your hand: #{display_hand(player)}"
  display_score "Your score: #{player[:score]}"
  puts ''
  display_winner(dealer, player)
end

def record_wins(dealer, player, wins)
  winner = detect_result(dealer, player)

  if winner == :player_busted || winner == dealer
    wins[:dealer] += 1
  elsif winner == :dealer_busted || winner == :player
    wins[:player] += 1
  end
end

wins = {
  player: 0,
  dealer: 0
}
loop do
  player = {
    hand: [],
    score: 0
  }
  dealer = {
    hand: [],
    score: 0
  }
  deck = []
  SUIT.each do |suit|
    CARDS.each do |card|
      deck << [suit, card]
    end
  end

  deal_cards(deck, player, 2)
  deal_cards(deck, dealer, 2)

  loop do
    display_current_status(player, dealer)
    prompt "hit or stay? (h/s)"
    answer = gets.chomp
    break if answer.downcase.start_with?('s')
    deal_cards(deck, player, 1)
    break if bust?(player)
  end

  unless bust?(player)
    loop do
      break if dealer[:score] >= MIN_STAY_SCORE || bust?(dealer)
      deal_cards(deck, dealer, 1)
    end
  end

  record_wins(dealer, player, wins)
  display_results(dealer, player)

  if wins[:dealer] >= ROUNDS || wins[:player] >= ROUNDS
    puts ''
    prompt "Player had #{wins[:player]} wins"
    prompt "Dealer had #{wins[:dealer]} wins"
    puts ''
    winner = wins[:player] >= ROUNDS ? 'Player' : 'Dealer'
    prompt "#{winner} wins the game"
    break
  end

  puts ''
  prompt "play again? (y/n)"
  choice = gets.chomp
  break unless choice.downcase.start_with?('y')
end

prompt 'game over'
