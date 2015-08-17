require_relative 'mastermind.rb'

puts "Welcome to Matermind"
puts "Submit a guess by typing the color of the pegs"
puts "You can choose between: orange, blue, cyan, green, purple, red"

m = Mastermind.new.play!
if m.code_guessed?
  puts "You have guessed the code. You're a Mastermind"
else
  puts "Aww too bad!. Wanna play again?"
end
