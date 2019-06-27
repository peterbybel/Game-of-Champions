def slow_puts(string)
  words = string.split
    words.each do |word|
    print word, " "
    sleep(1.0/4.0)
    end
    sleep(1.0/3.0)
    puts " "
end

def slow_print(string)
  words = string.split
    words.each do |word|
    print word, " "
    sleep(1.0/2.0)
  end
end
