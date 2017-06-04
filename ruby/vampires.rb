puts "How many employees will be processed?"
number_processed = gets.chomp.to_i

while number_processed > 0 do
  puts "What is your name?"
  name = gets.chomp

  puts "How old are you?"
  age = gets.chomp.to_i

  puts "What year were you born?"
  year = gets.chomp.to_i

  puts "Our company cafeteria serves garlic bread. Should we order some for you? Reply yes or no."
  garlic = gets.chomp

  puts "Would you like to enroll in the company's health insurance? Reply yes or no."
  health_i = gets.chomp

  if name == "Drake Cula" || name == "Tu Fang"
    print "Definitely a vampire."
  elsif (garlic == "no" && health_i == "no") && age > 100
    print "Almost certainly a vampire."
  elsif (garlic == "no" || health_i == "no") && age > 100 
    print "Probably a vampire."
  elsif (garlic == "yes" || health_i == "yes") && age < 100
    print "Probably not a vampire."
  else 
    print "Results inconclusive."
  end
  puts "Your age is #{age}. You were born in #{year}. Your preference for garlic bread is #{garlic}. Your preference for health insurance is #{health_i}."
  number_processed -= 1
  puts "Also, please name any allergies."
  allergy = gets.chomp! 
  while allergy != "sunshine" 
    if allergy == "sunshine" || allergy.include?("sunshine")
      puts "Probably a vampire."
      break
    elsif allergy == "done"
      break
    else
      puts "Any others?"
      allergy = gets.chomp
    end
  end
  puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
end



