require "sinatra"
require "sinatra/reloader"
require "sqlite3"


class MySite < Sinatra::Base
  register Sinatra::Reloader

  get '/' do
    erb :home
  end

  get '/taskform' do
    erb :taskform
  end

  # post'/taskform' do
  #   erb :taskform
  # end
  
end
