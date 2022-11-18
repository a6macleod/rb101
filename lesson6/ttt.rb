require 'pry'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +   # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +   # columns
                [[1, 5, 9], [3, 5, 7]]                # diagonals
computer_score = 0
player_score = 0

def prompt(msg)
  puts "=> #{msg}"
end

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  system 'clear'
  puts "You are #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}"
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize

def intialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def computer_best_choice(line, brd, marker)
  if (brd.values_at(*line).count(marker) == 2)
    brd.select { |key, value| line.include?(key) && value == INITIAL_MARKER }.keys.first
  else
    nil
  end
end

def computer_places_piece!(brd)
  square = nil

  # offense
  if !square
    WINNING_LINES.each do |line|
      square = computer_best_choice(line, brd, COMPUTER_MARKER)
      break if square
    end
  end

  # defense
  if !square
    WINNING_LINES.each do |line|
      square = computer_best_choice(line, brd, PLAYER_MARKER)
      break if square
    end
  end

  # Take the middle
  if !square && empty_squares(brd).include?(5)
    square = 5
  end

  # random pick
  if !square
    square = empty_squares(brd).sample if !square
  end

  brd[square] = COMPUTER_MARKER
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square (#{joinor(empty_squares(brd))})"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    puts "Sorry that is not a valid choice"
  end
  brd[square] = PLAYER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd) # double bang forces the return to be a boolean
end

def place_piece!(board, current_player)
  if current_player == COMPUTER_MARKER
    computer_places_piece!(board)
  elsif current_player == PLAYER_MARKER
    player_places_piece!(board)
  end
end

def alternate_player(current_player)
  if current_player == COMPUTER_MARKER
    PLAYER_MARKER
  else
    COMPUTER_MARKER
  end
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return "Player"
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return "Computer"
    end
  end
  nil
end

def joinor(array, separator = ', ', conjunction = 'or')
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

loop do
  board = intialize_board
  display_board(board)
  player_goes_first = false
  current_player = COMPUTER_MARKER


  prompt "Do you want to go first? (y/n) or let the computer choose (c)"
  choice = gets.chomp
  if choice.downcase.start_with?('c')
    player_goes_first = [true, false].sample
    if player_goes_first
      current_player = alternate_player(COMPUTER_MARKER)
    else
      current_player = alternate_player(PLAYER_MARKER)
    end
  elsif choice.downcase.start_with?('y')
    player_goes_first = true
    current_player = alternate_player(COMPUTER_MARKER)
  end

  loop do
    display_board(board)
    place_piece!(board, current_player)
    current_player = alternate_player(current_player)
    break if someone_won?(board) || board_full?(board)
  end

  display_board(board)

  if someone_won?(board)
    player_score += 1 if detect_winner(board) == 'Player'
    computer_score += 1 if detect_winner(board) == 'Computer'

    prompt "#{detect_winner(board)} has won!"
  else
    prompt "Its a tie!"
  end

  break if player_score >= 5 || computer_score >= 5
  prompt "play again? (y/n)"
  choice = gets.chomp
  break unless choice.downcase.start_with?('y')
end

prompt "You won the game" if player_score >= 5
prompt "The computer won the game" if computer_score >= 5
prompt "Good bye"
