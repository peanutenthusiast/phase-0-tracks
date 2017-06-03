#Define the string. 
#Write out each letter of the string.
#Use the .next method to change the string to
#advance each letter. 
#If it equals a space, then puts a space.
#The expected output is the string with each
#letter advanced one over.
password = gets.chomp.to_s
  index = 0
  while index < password.length
    if password[index] == " "
      p " "
    else 
      password[index] = password[index].next
    end
    index += 1
  end

puts password


#Define the string.
#Use the index on the string
#Compare it to variable of the string alphabet.
#To determine the letters index.
#Then replace with the letter of the index number
#prior. 
#If there is a space, it will put a space.
#The expected output is the string with each 
#letter changed to the previous letter.

#bag -> cbh -> refer to alphabet index -> 
#get index number for each letter -> then 
#acquire previous index number. 
#assemble previous index numbers and convert to
#"original" word.
