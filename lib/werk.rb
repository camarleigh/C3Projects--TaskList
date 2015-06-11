require 'sqlite3'
require "./lib/database"


module TaskList
  class Werk < Database

def all_tasks
    s = "SELECT * FROM tasks;"
    query!(s)
end
    # query()

    # taskform. chomp
    #   is there a db?  alter : create

    #   stick created data from taskform into task.db


  end
end
