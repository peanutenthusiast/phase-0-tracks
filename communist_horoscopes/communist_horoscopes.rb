#communist horoscopes

require 'sqlite3'
require 'zodiac'
require 'date'

db = SQLite3::Database.new("communist_horoscopes.db")

create_horoscope_table_cmd = <<-SQL_H
  CREATE TABLE IF NOT EXISTS horoscopes(
    id INTEGER PRIMARY KEY,
    horoscope TEXT
    )
SQL_H

create_user_table_cmd = <<-SQL_U
  CREATE TABLE IF NOT EXISTS users(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    birthday DATE,
    horoscope_id INTEGER,
    FOREIGN KEY (horoscope_id) REFERENCES horoscope(id)
  )
SQL_U


db.execute(create_horoscope_table_cmd)

db.execute(create_user_table_cmd)


# db.execute("INSERT INTO horoscopes (horoscope) VALUES ('Conflict will arise in the workplace, and so will the outlet for your proletariat anger. Ready yourself.')")

# db.execute("INSERT INTO horoscopes (horoscope) VALUES ('Your labor power finally gives way to a rise, but beware the tragedy of the commons. Do you fight for your fellow man, or do you fight for yourself? Alas, you feel the throes of individuality.
# ')")

# db.execute("INSERT INTO horoscopes (horoscope) VALUES ('If you possess belief in karma, dispossess it. No expense of capital nor labor power will return the way you expect it to.')") 

# db.execute("INSERT INTO horoscopes (horoscope) VALUES ('Read in the melody of “Unforgettable”: “Cancerous capitalist, that’s what you are.”')")

# db.execute("INSERT INTO horoscopes (horoscope) VALUES ('Always are we told to work hard, play hard, dream big. This week, forget it. Skimp. Relax. Conserve your labor power for the revolution.')")

# db.execute("INSERT INTO horoscopes (horoscope) VALUES ('You share aims with no one. Reassess yourself.')")

horoscopes_string = db.prepare('insert into horoscopes (horoscope) values (?)')
# horoscopes_string.execute("You are crapitalist agenda's target numero uno. Rise. Fight. Do what you feels right.")

# horoscopes_string.execute('When the capitalist whip lashes, how do you respond? With a bark? A bite? Another whip? Take heed this week.')

# horoscopes_string.execute("Your labor power will be extorted. What's new?")

# horoscopes_string.execute("A new capitalist arises, and with them, new tasks. Can you refuse them? Can you accept? Under this system, do we really have a choice?")

# horoscopes_string.execute("This week, show not the weakness of feeling. Our individualist feelings have no place in the revolution.")

# horoscopes_string.execute('The mouth and hands are the crux of the individual. Beware of what you say and do. There is no safe space.')

#Dates in sqlite3 are input as yyyy/mm/dd, 
#but ruby dates are input as (yyyy, mm, dd).
#The sqlite3 date must be converted to the ruby date (array) in order to 
#determine the zodiac sign with .zodiac_sign
#the horoscope id integer is the integer of the sign

ruby_birthday = ""

def convert_birthday_to_sign(birthday)
  split_birthday = birthday.split("/")
  year, month, day = split_birthday[0].to_i, split_birthday[1].to_i, split_birthday[2].to_i
  ruby_birthday = Date.new(year, month, day) 
  return ruby_birthday.zodiac_sign
end

# convert_birthday_to_sign("1992/9/13")

horoscope_id = ""

def convert_sign_to_integer(birthday)
  if ruby_birthday.aries?
    horoscope_id = 1
  elsif ruby_birthday.taurus?
    horoscope_id = 2
  elsif ruby_birthday.gemini?
    horoscope_id = 3
  elsif ruby_birthday.cancer?
    horoscope_id = 4
  elsif ruby_birthday.leo?
    horoscope_id = 5
  elsif ruby_birthday.virgo?
    horoscope_id = 6
  elsif ruby_birthday.libra?
    horoscope_id = 7
  elsif ruby_birthday.scorpio?
    horoscope_id = 8
  elsif ruby_birthday.saggitarius?
    horoscope_id = 9
  elsif ruby_birthday.capricorn?
    horoscope_id = 10
  elsif ruby_birthday.aquarius?
    horoscope_id = 11
  elsif ruby_birthday.pisces?
    horoscope_id = 12
  end
  return horoscope_id
end

def identify_user(db, name, birthday, horoscope_id)
  db.execute("INSERT INTO users (name, birthday, horoscope_id) VALUES (?, ?, ?)", [name, birthday, horoscope_id])
end

#"Hello comrade. What is your name?"

#"Mark de Dios."

#"Hello, Mark de Dios. Tell me, when were you reprod..born? Input in year, date,