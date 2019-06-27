require_relative 'class_game'

class CardGame < Game

  def initialize
  end


  def play()
    puts "CARD GAME!"
    slow_puts("I want you to think of a card, and I'll try to guess what it is.")
    slow_puts("Press ENTER when you have a card in mind")

    print "> "
    winning_card = $stdin.getc

    slow_puts("Alright, first let me see if I can guess the suit.")

    suits = ["Clubs", "Diamonds", "Hearts", "Spades"]
    suits_edit = suits.delete_at(rand(suits.length))

    slow_puts("Is #{suits_edit} the suit of your card?")
    puts "Press 'Y' or 'N'..."
    print "> "
    suit_answer = $stdin.gets.chomp.downcase

    if suit_answer == "n"
      suits_edit = suits.delete_at(rand(suits.length))
      slow_puts("Is #{suits_edit} the suit of your card?")
      puts "Press 'Y' or 'N'..."
      print "> "
      suit_answer = $stdin.gets.chomp.downcase

      if suit_answer == "n"
        suits_edit = suits.delete_at(rand(suits.length))
        slow_puts("Is #{suits_edit} the suit of your card?")
        puts "Press 'Y' or 'N'..."
        print "> "
        suit_answer = $stdin.gets.chomp.downcase

        if suit_answer == "n"
          suits_edit = suits.delete_at(rand(suits.length))
          slow_puts("Ah, ok then it must be #{suits_edit}!")
          puts "Press 'Y' or 'N'..."
          print "> "
          suit_answer = $stdin.gets.chomp.downcase

          if suit_answer == "n"
            slow_puts("There aren't any suits left, you cheater!")
            card_game.lose
          else
            slow_puts("I finally got it, even if it took me four tries!")
            suit_correct = suits_edit
          end

        else
          slow_puts("Third times the charm!")
          suit_correct = suits_edit
        end

      else
        slow_puts("Alright, it only took me 2 guesses!")
        suit_correct = suits_edit
      end

    else
      slow_puts("Man, I'm good!")
      suit_correct = suits_edit
    end



    slow_puts("Now that we know your suit is #{suit_correct}, let's see if I can guess the card!")
    slow_puts("I'm only going to give myself 3 guesses on this one...")

    cards = ["Ace", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten", "Jack", "Queen", "King"]
    cards_edit = cards.delete_at(rand(cards.length))

    slow_puts("Is the #{cards_edit} of #{suit_correct} your card?")
    puts "Press 'Y' or 'N'..."
    print "> "
    card_answer = $stdin.gets.chomp.downcase

    if card_answer == "n"
      cards_edit = cards.delete_at(rand(cards.length))
      slow_puts("Is the #{cards_edit} of #{suit_correct} your card?")
      puts "Press 'Y' or 'N'..."
      print "> "
      card_answer = $stdin.gets.chomp.downcase

      if card_answer == "n"
        cards_edit = cards.delete_at(rand(cards.length))
        slow_puts("Is the #{cards_edit} of #{suit_correct} your card?")
        puts "Press 'Y' or 'N'..."
        print "> "
        card_answer = $stdin.gets.chomp.downcase

        if card_answer == "n"
          slow_puts("Bummer, I didn't get it right!")
          win
        else
          slow_puts("I may not be impressive, but I am the winner!")
          lose
        end

      else
        slow_puts("Ok, that wasn't my best showing, but I guessed your card!")
        lose
      end

    else
      slow_puts("Wahoo! First try, I guessed your card!")
      lose
    end
  end
end
