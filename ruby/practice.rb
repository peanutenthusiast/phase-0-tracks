jobApp = {
  name: "",
  address: "",
  email: "", 
  phone: "",
  "fave shade of blue" => "",
  wallpaper: "",
  ombre_is: "",
}


puts "What's your name?"
jobApp[:name] = gets.chomp

puts "What's your address?"
jobApp[:address] = gets.chomp

puts "What's your email?"
jobApp[:email] = gets.chomp

puts "What's your phone number?"
jobApp[:phone] = gets.chomp

puts "What's your fave shade of blue? ;)"
jobApp[:fave_shade_of_blue] = gets.chomp

puts "Of these wallpapers, which do you prefer? Paisley, Chevrons, Photorealistic woodsy scenes (with or without squirrels), Abstact woodsy scenes (no squirrels)"
jobApp[:wallpaper] = gets.chomp

puts "What do you think of Ombre?"
jobApp[:ombre_is] = gets.chomp

jobApp.each [|key, value| puts "#Applicant's answer for #"

#h.each {|key, value| puts "#{key} is #{value}" }


