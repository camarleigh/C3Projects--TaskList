require "sinatra"
require "sinatra/reloader"
require "sqlite3"
require "./lib/werk"
# require "./lib/database"



class MySite < Sinatra::Base
  register Sinatra::Reloader

  get '/' do
    q = TaskList::Werk.new("task.db")
    @tasks = q.all_tasks
    erb :home
  end


  get '/taskform' do
    erb :taskform
  end


  post'/taskform' do
    erb :taskform
  end

end
