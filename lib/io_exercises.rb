# I/O Exercises
#
# * Write a `guessing_game` method. The computer should choose a number between
#   1 and 100. Prompt the user to `guess a number`. Each time through a play loop,
#   get a guess from the user. Print the number guessed and whether it was `too
#   high` or `too low`. Track the number of guesses the player takes. When the
#   player guesses the number, print out what the number was and how many guesses
#   the player needed.
# * Write a program that prompts the user for a file name, reads that file,
#   shuffles the lines, and saves it to the file "{input_name}-shuffled.txt". You
#   could create a random number using the Random class, or you could use the
#   `shuffle` method in array.
def guessing_game
  puts "Guess a number"
  computer_num = rand(100) + 1
  guess_count = 0
  $stdin.each do |input|
    puts input
    guess_count += 1
    if input.chomp < computer_num.to_s
      puts "too low"
    elsif input.chomp > computer_num.to_s
      puts "too high"
    end
    if input.chomp == computer_num.to_s
      puts computer_num.to_s + ": You win!"
      puts "Number of guess: #{guess_count}"
      break
    end
  end
end
