require "sinatra"
require "sinatra/reloader"
require "sqlite3"


class MySite < Sinatra::Base
  register Sinatra::Reloader

  # get '/' do
  #   erb :index
  # end

end
