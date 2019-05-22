require 'sinatra/base'
require './lib/bookmark'
# BookmarkManager App
class BookmarkManager < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :bookmarks
  end

  run! if app_file == $PROGRAM_NAME
end
