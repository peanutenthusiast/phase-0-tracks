# Array Drills

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]

# 1. Iterate through the zombie_apocalypse_supplies array,
# printing each item in the array separated by an asterisk
# ----

zombie_apocalypse_supplies.each do |i|
  print " #{i} *"
end

# 2. In order to keep yourself organized, sort your zombie_apocalypse_supplies
# in alphabetical order. Do not use any special built-in methods.

p "----"

p zombie_apocalypse_supplies.sort_by { |supply| supply.downcase }

# 3. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies. Do not use any special built-in methods.
# For instance: are boots in your list of supplies?
p "----"

def binoculars(zombie_supplies)
  if zombie_supplies.include?("binoculars")
    puts "You are prepared."
  else
    puts "lol u sure u ready?"
  end
end

binoculars(zombie_apocalypse_supplies)

# 4. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5. Do not use any special built-in methods.
p "----"

zombie_apocalypse_supplies.map! do |i|
  until zombie_apocalypse_supplies.length == 5  
    zombie_apocalypse_supplies.pop
  end
  p i
end

# 5. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.
other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
                            "solar battery", "flashlight"]

p zombie_apocalypse_supplies.concat(other_survivor_supplies).uniq

p '----'

# Hash Drills

extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

# 1. Iterate through extinct_animals hash, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.
# ----

extinct_animals.each do |animal, year|
  p "#{animal} -- #{year} * "
end

# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000. Do not use any special built-in methods.


extinct_animals.keep_if { |animal, year| year < 2000}
p "----"

updated_extinct_animals = extinct_animals.map do |animal, year|
  year - 3
  p "#{animal} actually went extinct in #{year}"
end
# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# so they accurately reflect what year the animal went extinct.
# Do not use any special built-in methods.
p "----"



# 4. You've heard that the following animals might be extinct, but you're not sure.
# Check if they're included in extinct_animals, one by one:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Do not use any special built-in methods.
# ----

extinct_animals.each do |animal, year|
  if animal.include?("Andean Cat")
    p "#{animal} went extinct in #{year}. :("
  elsif animal.include?("Dodo")
    p animal + " ain't gon' be comin' back."
  elsif animal.include?("Saiga Antelope")
    p "#{animal} went extinct in #{year}. :("
  else
    p "#{animal} went extinct in #{year}."
  end
end

# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find the built-in method that helps you accomplish this in the Ruby documentation
# for Hashes.
p "----"

extinct_animals_for_real = extinct_animals.map do |animal, year|
  extinct_animals.reject { |animal, year| animal == "Passenger Pigeon"}
  p extinct_animals.flatten
end