require "sqlite3"

db = SQLite3::Database.new "db/task.db"
db.execute "CREATE TABLE tasks
  (id INTEGER,
  taskname TEXT NOT NULL,
  description TEXT,
  datecomp TEXT);"

db.close if db
