require 'sqlite3'
require "./lib/database"


module TaskList
  class Werk < Database

def all_tasks
    statement = "SELECT * FROM tasks;"
    query!(statement)
end
    # query()

    # taskform. chomp
    #   is there a db?  alter : create

    #   stick created data from taskform into task.db


  end
end
