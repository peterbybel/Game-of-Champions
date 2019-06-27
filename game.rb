require_relative 'methods'
require_relative 'card_game'
require_relative 'dice_game'
require_relative 'word_game'

slow_puts("I've got three games for you to play!")
slow_puts("We'll play them in a random order,")
slow_puts("and whoever wins the most is the champion!")
puts " "
sleep(1)

game_options = [1, 2, 3]
first_game = game_options.delete_at(rand(game_options.length))
second_game = game_options.delete_at(rand(game_options.length))
third_game = game_options.delete_at(rand(game_options.length))


if first_game == 1
  slow_puts("Alright, first we will play a...")
  sleep(1)
  card_game = CardGame.new
  card_game.play
elsif first_game == 2
  slow_puts("Alright, first we will play a...")
  sleep(1)
  dice_game = DiceGame.new
  dice_game.play
else
  slow_puts("Alright, first we will play a...")
  sleep(1)
  word_game = WordGame.new
  word_game.play
end


if second_game == 1
  slow_puts("Alright, second we will play a...")
  card_game = CardGame.new
  card_game.play
elsif second_game == 2
  slow_puts("Alright, second we will play a...")
  dice_game = DiceGame.new
  dice_game.play
else
  slow_puts("Alright, second we will play a...")
  word_game = WordGame.new
  word_game.play
end


if third_game == 1
  slow_puts("Lastly, we will play a...")
  card_game = CardGame.new
  card_game.play
elsif third_game == 2
  slow_puts("Lastly, we will play a...")
  dice_game = DiceGame.new
  dice_game.play
else
  slow_puts("Lastly, we will play a...")
  word_game = WordGame.new
  word_game.play
end


final_score = card_game.score + dice_game.score + word_game.score

slow_puts("Alright, let's review the scores!")
sleep(2)
print "Card Game Score: "
puts card_game.score
print "Dice Game Score: "
puts dice_game.score
print "Word Game Score: "
puts word_game.score
sleep(2)

if final_score == 3
  puts "*" * 20
  slow_puts("You won all the games!")
  slow_puts("This makes YOU the...")
  sleep(1)
  slow_puts("C H A M P I O N")
  sleep(1)
  slow_puts("Thanks for playing my game!")
  exit(0)
elsif final_score == 2
  puts "*" * 20
  slow_puts("You won 2 out of the 3 games, good job!")
  slow_puts("This makes YOU the...")
  sleep(1)
  slow_puts("C H A M P I O N")
  sleep(1)
  slow_puts("Thanks for playing my game!")
  exit(0)
else
  puts "*" * 20
  slow_puts("Unfortunately, I won more games than you...")
  slow_puts("This makes ME the...")
  sleep(1)
  slow_puts("C H A M P I O N")
  sleep(1)
  slow_puts("Thanks for playing my game!")
  exit(0)
end
