require 'sqlite3'

module TaskList
  class Werk < Database

def show_tasks
    query!(SELECT * FROM tasks)
end
    # query()

    # taskform. chomp
    #   is there a db?  alter : create

    #   stick created data from taskform into task.db

 
  end
end
