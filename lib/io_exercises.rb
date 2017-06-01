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
  guess_count = 0
  won = false
  computer_num = rand(1..100)
  human_guess = -1

  while !won
    puts "Guess a number:"
    human_guess = gets.chomp.to_i
    puts human_guess
    guess_count += 1
    if human_guess == computer_num
      won = true
    else
      message = human_guess > computer_num ? "too high" : "too low"
      puts message
    end
  end
  puts "You win! Your guess is : #{human_guess}"
  puts "Number of guess: #{guess_count}"
end

  # puts "Guess a number"
  # computer_num = rand(1..100)
  # guess_count = 0
  # $stdin.each do |input|
  #   puts input
  #   guess_count += 1
  #   if input.chomp < computer_num.to_s
  #     puts "too low"
  #   elsif input.chomp > computer_num.to_s
  #     puts "too high"
  #   elsif input.chomp == "0"
  #     raise "no zero"
  #   end
  #   if input.chomp == computer_num.to_s
  #     puts computer_num.to_s + ": You win!"
  #     puts "Number of guess: #{guess_count}"
  #     break
  #   end
  # end

  # number = rand(1..100); count = 0; won = false
  #
  # puts "Welcome to the Guessing name!"
  # while !won
  #   puts "Please guess a number: "; guess = gets.chomp.to_i ; count += 1
  #   if (guess == number) then won = true else
  #     output = guess > number ? "too high" : "too low"
  #     print "Your guessed is #{guess}, #{output}.\n\n"
  #   end
  # end
  # puts "You won! the number was #{number} with #{count} guesses."
#
# end
