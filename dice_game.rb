require_relative 'class_game'

class DiceGame < Game

  def initialize
  end


  def play()
    puts "DICE GAME!"
    slow_puts("You have to roll two dice, and get a lower score than mine.")
    slow_puts("(If we tie, you lose!)")
    slow_puts("I'll go first...")
    print "My score is."
    sleep(1.0/2.0)
    print "."
    sleep(1.0/2.0)
    print "."
    sleep(1.0/2.0)

    my_score = rand(4..12)
    puts my_score
    sleep(1)

    slow_puts("Ok, now it's time for your first roll!")
    puts "Press ENTER to roll."
    print "> "
    roll = $stdin.getc

    first_roll = rand(1..6)
    sleep(1)
    slow_puts("You rolled #{first_roll}")
    slow_puts("And now let's see your second roll!")
    puts "Press ENTER to roll."
    print "> "
    roll = $stdin.getc

    second_roll = rand(1..6)
    score_final = first_roll + second_roll
    sleep(1)
    slow_puts("You rolled #{second_roll}")
    sleep(1)

    if score_final < my_score
      slow_puts("Your total is #{score_final}, which is less than my score of #{my_score}, so...")
      win
    elsif score_final == my_score
      slow_puts("Your total of #{score_final} ties with my score of #{my_score}, so...")
      lose
    else
      slow_puts("Your total is #{first_roll + second_roll}, which is not less than my score of #{my_score}, so...")
      lose
    end
  end
end
