class Game
  attr_accessor(:score)

  def initialize
    @score = score
  end

  def win
    sleep(1)
    puts "*" * 10
    puts "You win!"
    puts "*" * 10
    @score = 1
    sleep(1)
  end

  def lose
    sleep(1)
    puts "*" * 10
    puts "You lose!"
    puts "*" * 10
    @score = 0
    sleep(1)
  end
end
