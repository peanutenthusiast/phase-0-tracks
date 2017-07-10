#communist horoscopes

require 'sqlite3'
require 'zodiac'

db = SQLite3::Database.new("communist_horoscopes.db")

create_horoscope_table_cmd = <<-SQL_H
  CREATE TABLE IF NOT EXISTS horoscopes(
    id INTEGER PRIMARY KEY,
    horoscope TEXT
    )
SQL_H

db.execute(create_horoscope_table_cmd)

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