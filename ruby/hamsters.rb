puts "What is the hamster's name?"
name = gets.chomp

puts "How would you rate the volume level from 1 to 10?"
volume = gets.chomp.to_i

puts "What is the color of the fur?"
color = gets.chomp

puts "Do you think the hamster is good for adoption? (y/n)"
adopt = gets.chomp

if adopt == "y"
  adoption = "in a great condition!"
else
  adoption = "alright!"
end

puts "How old is the hamster? (Please enter a number, or leave it blank."
old = gets.chomp

if old.empty? 
  age = "unknown"
else
  age = "#{old}" 
end

puts "Your hamster's name is #{name}, and its volume level is #{volume}. 
The color of the fur is #{color}. Your hamster is #{adoption} Your hamster's age is #{age}."
