require_relative 'methods'
require_relative 'class_game'

class WordGame < Game

  def initialize
  end


  def play()
    puts "WORD GAME!"
    slow_puts("I'm thinking of a word, and you'll have to guess what it is.")
    slow_puts("Be careful, you only have 7 lives!")

    print "Generating your word"
    print "."
    sleep(1.0/2.0)
    print "."
    sleep(1.0/2.0)
    print "."
    sleep(1.0/2.0)
    sleep(1)
    puts " Word generated!\n"
    sleep(1)

    turn = 0
    dictionary = File.open('dictionary.txt')
    dictionary_array = dictionary.readlines
    dictionary_array.shuffle!
    word = dictionary_array[2]
    word_array = word.split(%r{\s*})
    #puts word_array.inspect
    letters_remaining = dictionary_array[2].split(%r{\s*})


    alphabet = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K",
    "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
    lives = 7

      if turn == 0
        puts " "
        puts " "
      word_array.each do |x|
        slow_print("_ ")
      end
      puts "\n\n"


      puts "Lives Remaining: #{lives}"
      puts "Letters Available: "

      alphabet.each do |x|
        print "#{x} "
      end
      puts "\n\n"

      puts "Guess a letter: "
      print "> "
      guess = gets.chomp.upcase.strip

      until alphabet.include?(guess) == true
        puts "INVALID ENTRY"
        slow_puts("Please guess from the available letters")
        print "> "
        guess = gets.chomp.upcase.strip
      end

      until lives == 0 || letters_remaining == []

        if word_array.include?(guess.downcase) == true

          puts "\n\n"
          alphabet.delete(guess)
          letters_remaining.delete(guess.downcase)

          if letters_remaining == []
            break
          end

          word_array.each do |x|
            if alphabet.include?(x.upcase) == true
              slow_print("_ ")
            else
              slow_print("#{x.upcase} ")
            end
          end

          puts "\n\n"
          puts "Lives Remaining: #{lives}"
          puts "Letters Available: "

          alphabet.each do |x|
            print "#{x} "
          end
          puts "\n\n"

          puts "Guess a letter: "
          print "> "
          guess = gets.chomp.upcase.strip

          until alphabet.include?(guess) == true
             puts "INVALID ENTRY"
             slow_puts("Please guess from the available letters")
             print "> "
             guess = gets.chomp.upcase.strip
          end

        elsif lives > 1
          lives -= 1

          puts "WRONG!\n\n"
          alphabet.delete(guess)

          word_array.each do |x|
            if alphabet.include?(x.upcase) == true
              slow_print("_ ")
            else
              print "#{x.upcase} "
            end
          end

          puts "\n\n"
          puts "Lives Remaining: #{lives}"
          puts "Letters Available: "

          alphabet.each do |x|
            print"#{x} "
          end
          puts "\n\n"

          puts "Guess a letter: "
          print "> "
          guess = gets.chomp.upcase.strip

          until alphabet.include?(guess) == true
             puts "INVALID ENTRY"
             slow_puts("Please guess from the available letters")
             print "> "
             guess = gets.chomp.upcase.strip
          end

        else
          lives -= 1
          slow_puts("I'm sorry, the word was #{word.upcase}")
          lose
        end

      end # of first guess until

      if letters_remaining == []
        slow_puts("CONGRATULATIONS! You got the word #{word.upcase}")
        win
      end
    end


  end
end

#game = Hangman.new
#game.play
