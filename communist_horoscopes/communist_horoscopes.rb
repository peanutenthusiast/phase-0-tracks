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

