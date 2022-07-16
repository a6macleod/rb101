READABLE_CHOICES = ["rock (r)", "paper (p)",
                    "scissors (sc)", "lizard (l)", "spock (sp)"]
VALID_CHOICES = {
  r: "rock",
  p: "paper",
  sc: "scissors",
  l: "lizard",
  sp: "spock",
  rock: "rock",
  paper: "paper",
  scissors: "scissors",
  lizard: "lizard",
  spock: "spock"
}

def prompt(message)
  puts "=> #{message}"
end

def first_rock(second)
  second == "scissors" ||
    second == "lizard"
end

def first_paper(second)
  second == "rock" ||
    second == "spock"
end

def first_scissors(second)
  second == "paper" ||
    second == "lizard"
end

def first_lizard(second)
  second == "paper" ||
    second == "spock"
end

def first_spock(second)
  second == "rock" ||
    second == "scissors"
end

def win?(first, second)
  case first
  when "rock"
    first_rock(second)
  when "paper"
    first_paper(second)
  when "scissors"
    first_scissors(second)
  when "lizard"
    first_lizard(second)
  when "spock"
    first_spock(second)
  end
end

def increment_score(winner, p_score, c_score)
  if winner == "player"
    p_score << "1"
  elsif winner == "computer"
    c_score << "1"
  end
end

def round_results(player, computer)
  if win?(player, computer)
    "player"
  elsif win?(computer, player)
    "computer"
  else
    "tie"
  end
end

def display_winner(winner)
  if winner == "player" || winner == "computer"
    prompt("#{winner} wins!")
  else
    prompt("Its a tie!")
  end
end

def display_scores(p_score, c_score)
  prompt("Player Score: #{p_score.length}")
  prompt("Computer Score: #{c_score.length}")
end

def end_game?(p_score, c_score)
  if p_score.length == 3 || c_score.length == 3
    true
  end
end

def display_grand_winner(round_winner)
  prompt("#{round_winner} is the final winner! Good game!")
end

player_score = ""
computer_score = ""

prompt("Rock Paper Scissors! best of 3 wins!")
loop do
  choice = ''
  loop do
    prompt("Choose one: #{READABLE_CHOICES.join(', ')}")
    choice = gets.chomp.downcase

    if VALID_CHOICES.include?(choice.to_sym)
      break
    else
      puts "That is not a valid choice"
    end
  end

  computer_choice = VALID_CHOICES.to_a.sample

  prompt("You chose: #{VALID_CHOICES[choice.to_sym]}")
  prompt("Computer chose: #{computer_choice[1]}")

  round_winner = round_results(VALID_CHOICES[choice.to_sym], computer_choice[1])

  increment_score(round_winner, player_score, computer_score)

  display_winner(round_winner)

  display_scores(player_score, computer_score)

  if end_game?(player_score, computer_score)
    display_grand_winner(round_winner)
    break
  end

  prompt("Play again? (y to play again)")
  answer = gets.chomp
  break unless answer.downcase.start_with?("y")
end

prompt("Thanks for playing. Good bye!")
