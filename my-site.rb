require "sinatra"
require "sinatra/reloader"
require "sqlite3"


class MySite < Sinatra::Base
  register Sinatra::Reloader

  get '/' do
    erb :home
  end


  get '/taskform' do
    db = SQLite3::Database.open "db/task.db"
    db.execute "INSERT INTO tasks(taskname, description) VALUES('taskname', 'description');"
    last_row_id = db.last_insert_row_id
    erb :taskform
  end


  # post'/taskform' do
  #   erb :taskform
  # end

end
