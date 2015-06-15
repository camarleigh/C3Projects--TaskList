require "sqlite3"

db = SQLite3::Database.new "db/task.db"
db.execute "CREATE TABLE tasks
  (id INTEGER PRIMARY KEY,
  taskname TEXT NOT NULL,
  description TEXT,
  datecomp varchar default 'Werk in Progress');"
# Data consistancy! Everything werks.
db.close if db
