require 'sqlite3'
require "./lib/database"


module TaskList
  class Werk < Database

def all_tasks
    statement = "SELECT * FROM tasks;"
    query!(statement)
end




  end
end
