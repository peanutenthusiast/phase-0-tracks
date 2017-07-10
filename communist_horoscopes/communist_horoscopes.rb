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

db.execute("INSERT INTO horoscopes (horoscope) VALUES ('Conflict will arise in the workplace, and so will the outlet for your proletariat anger. Ready yourself.')")

db.execute("INSERT INTO horoscopes (horoscope) VALUES ('Your labor power finally gives way to a rise, but beware the tragedy of the commons. Do you fight for your fellow man, or do you fight for yourself? Alas, you feel the throes of individuality.
')")

db.execute("INSERT INTO horoscopes (horoscope) VALUES ('If you possess belief in karma, dispossess it. No expense of capital nor labor power will return the way you expect it to.')") 

db.execute("INSERT INTO horoscopes (horoscope) VALUES ('Read in the melody of “Unforgettable”: “Cancerous capitalist, that’s what you are.”')")

db.execute("INSERT INTO horoscopes (horoscope) VALUES ('Always are we told to work hard, play hard, dream big. This week, forget it. Skimp. Relax. Conserve your labor power for the revolution.')")

db.execute("INSERT INTO horoscopes (horoscope) VALUES ('You share aims with no one. Reassess yourself.')")

# db.execute("INSERT INTO horoscopes (horoscope) VALUES ('You are target #1 in this week's capitalist agenda. Rise. Fight. Tear Big Brother asunder.')")

# db.execute("INSERT INTO horoscopes (horoscope) VALUES ('When the capitalist whip lashes, how do you respond? With a bark? A bite? Another whip? Take heed this week.')")

# db.execute("INSERT INTO horoscopes (horoscope) VALUES ('Your labor power will be extorted. What's new?')")

# db.execute("INSERT INTO horoscopes (horoscope) VALUES ('A new capitalist arises, and with them, new tasks. Can you refuse them? Can you accept? Under this system, do we really have a choice?')")

# db.execute("INSERT INTO horoscopes (horoscope) VALUES ('This week, show not the weakness of feeling. Our individualist feelings have no place in the revolution.The mouth and hands are the crux of the individual. Beware of what you say and do. This is no safe space. ')")

# db.execute("INSERT INTO horoscopes (horoscope) VALUES ('The mouth and hands are the crux of the individual. Beware of what you say and do. This is no safe space.')")