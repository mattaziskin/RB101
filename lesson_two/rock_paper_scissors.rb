VALID_CHOICES = ['rock', 'paper', 'scissors', 'lizard', 'Spock']
ABBREVIATED_CHOICES = {
  'r' => 'rock',
  'p' => 'paper',
  's' => 'scissors',
  'l' =>'lizard',
  'S' =>'Spock'
}
WIN_CON = {
  'rock' => ['scissors', 'lizard'],
  'paper' => ['rock', 'spock'],
  'scissors' => ['paper', 'lizard'],
  'lizard' => ['paper','spock'],
  'Spock' => ['scissors', 'rock']
}

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win_test(selection, computer_selection)
  if WIN_CON[selection].include?(computer_selection)
    outcome = "YOU WIN!"
  elsif WIN_CON[computer_selection].include?(selection)
    outcome = "YOU LOSE!"
  else
    outcome = "YOU TIE!"
  end
  outcome
end

prompt("Welcome to Rock, Paper, Scissors, Lizard, Spock")
computer_choice = ''
choice = ''
player_wins = 0
computer_wins = 0
loop do # main gameplay loop
  loop do
    prompt("Choose one: 'r' for Rock, 'p' for paper, 's' for scissors, 'l' for lizard, or 'S' for Spock")
    choice = gets.chomp
    if ABBREVIATED_CHOICES[choice]
      break
    else
      prompt("Error: please type a valid option")
    end
  end
  computer_choice = VALID_CHOICES.sample

  prompt("You chose #{ABBREVIATED_CHOICES[choice]}, and computer chose #{computer_choice}")

  puts win_test(ABBREVIATED_CHOICES[choice], computer_choice)
  case win_test(ABBREVIATED_CHOICES[choice], computer_choice)
    when "YOU WIN!" then player_wins += 1
    when "YOU LOSE!" then computer_wins += 1
  end

  prompt("The score is: player #{player_wins} to computer #{computer_wins}")
  break if player_wins == 3 || computer_wins == 3
end
if player_wins == 3
  prompt("Thanks for playing! You're the GRAND WINNER! Bye Bye!")
else
  prompt("Thanks for playing! Better luck next time!")
end