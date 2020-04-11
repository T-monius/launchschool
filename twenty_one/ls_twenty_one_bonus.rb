# ls_twenty_one_bonus.rb

WHATEVER_ONE = 21
STAY_POINT = 17

SUITS = ['H', 'D', 'S', 'C']
VALUES = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']

def prompt(msg)
  puts "=> #{msg}"
end

def initialize_deck
  SUITS.product(VALUES).shuffle
end

def total(cards)
  # cards = [['H', '3'], ['S', 'Q'], ... ]
  values = cards.map { |card| card[1] }

  sum = 0
  values.each do |value|
    if value == "A"
      sum += 11
    elsif value.to_i == 0 # J, Q, K
      sum += 10
    else
      sum += value.to_i
    end
  end

  # correct for Aces
  values.select { |value| value == "A" }.count.times do
    sum -= 10 if sum > WHATEVER_ONE
  end

  sum
end

def busted?(total)
  total > WHATEVER_ONE
end

def compare_cards(dealer_cards, player_cards, dealer_total, player_total)
  puts "=============="
  prompt "Dealer has #{dealer_cards}, for a total of: #{dealer_total}"
  prompt "Player has #{player_cards}, for a total of: #{player_total}"
  puts "=============="
end

# :tie, :dealer, :player, :dealer_busted, :player_busted
def detect_result(dealer_total, player_total)
  if player_total > WHATEVER_ONE
    :player_busted
  elsif dealer_total > WHATEVER_ONE
    :dealer_busted
  elsif dealer_total < player_total
    :player
  elsif dealer_total > player_total
    :dealer
  else
    :tie
  end
end

def display_result(dealer_total, player_total)
  result = detect_result(dealer_total, player_total)

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

def play_again?
  puts "-------------"
  prompt "Do you want to play again? (y or n)"
  answer = gets.chomp
  answer.downcase.start_with?('y')
end

prompt "Welcome to Twenty-One!"

player_wins = 0
dealer_wins = 0
loop do
  puts "You've won #{player_wins} games, and the computer #{dealer_wins}"
  prompt "You are the overall winner!" if player_wins == 5
  prompt "Sorry, the dealer is the overall winner :-(." if dealer_wins == 5
  break if player_wins == 5 || dealer_wins == 5

  # initialize vars
  deck = initialize_deck
  player_cards = []
  dealer_cards = []

  # initial deal
  2.times do
    player_cards << deck.pop
    dealer_cards << deck.pop
  end

  player_total = total(player_cards)
  dealer_total = total(dealer_cards)

  prompt "Dealer has #{dealer_cards[0]} and ?"
  prompt "You have: #{player_cards[0]} and #{player_cards[1]}," \
         "for a total of #{player_total}."

  # player turn
  loop do
    player_turn = nil
    loop do
      prompt "Would you like to (h)it or (s)tay?"
      player_turn = gets.chomp.downcase
      break if ['h', 's'].include?(player_turn)
      prompt "Sorry, must enter 'h' or 's'."
    end

    if player_turn == 'h'
      player_cards << deck.pop
      player_total = total(player_cards)
      prompt "You chose to hit!"
      prompt "Your cards are now: #{player_cards}"
      prompt "Your total is now: #{player_total}"
    end

    break if player_turn == 's' || busted?(player_total)
  end

  if busted?(player_total)
    compare_cards(dealer_cards, player_cards, dealer_total, player_total)
    display_result(dealer_total, player_total)
    dealer_wins += 1
    # play_again? ? next : break
    next
  else
    prompt "You stayed at #{total(player_cards)}"
  end

  # dealer turn
  prompt "Dealer turn..."

  loop do
    break if dealer_total >= STAY_POINT

    prompt "Dealer hits!"
    dealer_cards << deck.pop
    dealer_total = total(dealer_cards)
    prompt "Dealer's cards are now: #{dealer_cards}"
  end

  if busted?(dealer_total)
    compare_cards(dealer_cards, player_cards, dealer_total, player_total)
    display_result(dealer_total, player_total)
    player_wins += 1
    # play_again? ? next : break
    next
  else
    prompt "Dealer stays at #{dealer_total}"
  end

  # both player and dealer stays - compare cards!
  compare_cards(dealer_cards, player_cards, dealer_total, player_total)
  display_result(dealer_total, player_total)
  winner = detect_result(dealer_total, player_total)
  if winner == :player
    player_wins += 1
  elsif winner == :dealer
    dealer_wins += 1
  end
end

prompt "Thank you for playing Twenty-One! Good bye!"
