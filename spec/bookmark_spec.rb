require 'bookmark'

describe Bookmark do 
  describe '.favourites' do
    it 'returns a list of bookmarks' do
      bookmarks = Bookmark.new.all
      expect(bookmarks).to eq ['https://makers.tech', 'https://www.google.com', 'https://www.yahoo.com']
    end
  end
end
