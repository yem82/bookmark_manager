require 'sinatra/base'
require './lib/bookmark'
# BookmarkManager App
class BookmarkManager < Sinatra::Base
  get '/' do
    erb :"bookmarks/index"
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :"bookmarks/bookmarks"
  end

  # post '/bookmarks' do
  #   "Hello World"
  # end

  get '/bookmarks/new' do
    erb :"bookmarks/new"
  end

  post'/bookmarks/new' do
    url = params['url']
    connection = PG.connect(dbname: 'bookmark_manager_test')
    connection.exec("INSERT INTO bookmarks (url) VALUES('#{url}')")
    redirect '/bookmarks'
  end

  run! if app_file == $PROGRAM_NAME
end
