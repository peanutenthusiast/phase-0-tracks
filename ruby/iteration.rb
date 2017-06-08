# def say_bye
#   puts "Bye Tom"
#   3.times {yield}
# end

# say_bye {puts "bye"}


actors = ["Ariana", "Justin", "Beyonce", "Taylor"]
main_characters = {
  Tom:  "Jerry",
  JLO:  "Marc Anthony",
  Harry: "Ron"
}

actors.each do |actor|
   puts actor
end

main_characters.each do |friend_1, friend_2 |
   puts main_characters
end

actors.map! do |actor|
   puts actors
   actor.reverse
end

new_main_characters = main_characters.map do |friend_1, friend_2|
  puts main_characters[friend_1]
  main_characters[friend_1].reverse
end

number = [1, 2, 3, 4, 5]

number.delete_if { |n| n < 5 }

p number

rebnum = [5, 4, 3, 2, 1]

rebnum.keep_if { |r| r < 5}

p rebnum

hash = {
  f: "friends who do stuff together",
  u: "you and me",
  n: "anywhere and anytime at all"
}

hash.delete_if { |k, v| k >= :u }

p hash

hash2 = {
  f: "fire that burns down the whole town",
  u: "uranium BOMBS",
  n: "no survivors"
}

hash2.keep_if { |k, v| k != :f}

p hash2

twos = [2, 4, 6, 8, 10, 12]
fours = twos.select do |num|
  if num % 4 == 0 
    p num
  end 
end

fives = {a: 5, b: 10, c: 15, d: 20}

tens = fives.select do |n, v| 
  if v % 10 == 0
    p "#{n} is #{v}"
  end
end

threes = [3, 6, 9, 12, 15, 18]
threes.reject { |o| o % 9 == 0}

bb = { 1 => 4, 9 => 16, 25 => 36, 49 => 64}

bb.reject {|o, p| p % 6 == 0}
