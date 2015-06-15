require 'sqlite3'

module TaskList
  class Database
    attr_reader :database_name

    def initialize(database_name)
      @database_name = "db/#{database_name}"
    end

    def check_query!(statement, *params)
      @taskname = params[0]
      # This provides a failsafe in case the taskname requirement
      # in the form fails to catch an empty string.
      if @taskname.length == 0
        raise "At least type in a task!"
      else
        query!(statement, *params)
      end
    end

    private

    def query!(statement, *params)
      db = SQLite3::Database.new @database_name
      db.execute statement, params

    rescue SQLite3::Exception => error
      puts "That's an error!"

      # use this block to recover from an error
      # consider giving the user a special message back
      # inspect the `error` object for information about the error

    ensure
      db.close if db
    end
  end
end
