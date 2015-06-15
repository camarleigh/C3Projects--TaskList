require 'sqlite3'
require "./lib/database"


module TaskList
  class Werk < Database

def all_tasks
    statement = "SELECT * FROM tasks;"
    query!(statement)
end


def write_task(taskname, description)
    check_query!("INSERT INTO tasks(taskname, description) VALUES (?,?);",taskname, description)
end


  end
end
