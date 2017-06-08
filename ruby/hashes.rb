#Declare hash for client information.
clientInfo = {
  name:"",
  age: "",
  children_no: "",
  furniture: [],
  budget: "",
}

#Ask for client name.
p "What's their name?"
clientInfo[:name] = gets.chomp

#Ask for client age.
#Converts string to number
p "What's their age?"
clientInfo[:age] = gets.chomp.to_i

#Ask for number of children.
p "How many children do they have?"
clientInfo[:children_no] = gets.chomp.to_i

#Asks client to describe use of room to be designed.
p "List the furniture they envision in the room. Be detailed, and when finished, enter 'finished.'"
clientInfo[:furniture] << gets.chomp
#Asks client for a budget estimate.
p "What's their budget estimate?"
clientInfo[:budget] = gets.chomp
#Prints a summary of their information.
p clientInfo.each {|question, answer| puts "The client's answer to #{question} is #{answer}."}

p "Is there anything you need to update? If so, enter the data type. If not, enter 'done.'"
change = gets.chomp
if change == "done"
  p "Thanks, now get to work."
else
  p "What would you like to update?"
  update = gets.chomp.to_sym
  p "Please update with new information."
  #Program navigates to key and has user update this key.
  clientInfo[update] << gets.chomp
end

p clientInfo.each {|question, answer| puts "The client's answer to #{question} is #{answer}."}


#initialize and manipulate arrays
#initialize and manipulate hashes
#use variables to access arrays
#use variables to access hashes
#experiment with expressions that reference data structures
#integrate a data structure into a simple program





#array = []

#puts "dont u just luv lists"

#loops do 
#  puts "Enter an item (or type 'exit'):"
#  input = gets.chomp!
#  break if input == 'exit!'
#  array << input
#end

#puts "dis it"
#puts array 


