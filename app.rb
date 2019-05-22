require 'sinatra/base'
# BookmarkManager App
class BookmarkManager < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/bookmarks' do
    erb :bookmarks
  end

  run! if app_file == $PROGRAM_NAME
end
