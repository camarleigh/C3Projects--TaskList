require "sinatra"
require "sinatra/reloader"
require "sqlite3"
require "./lib/werk"
# require "./lib/database"



class MySite < Sinatra::Base
  register Sinatra::Reloader

  get '/' do
    werk = TaskList::Werk.new("task.db")
    @tasks = werk.all_tasks
    erb :home
  end

  get '/taskform' do
    @taskname = params[:taskname]
    erb :taskform

  end


  post'/taskform' do
    werk = TaskList::Werk.new("task.db")
    werk.write_task(params[:taskname], params[:description])
    @tasks = werk.all_tasks
    erb :home
  end

end
