require 'bookmark'

describe Bookmark do
  describe '.favourites' do
    it 'returns a list of bookmarks' do
      bookmarks = Bookmark.all
      expect(bookmarks).to eq ['http://www.makers.tech', 'http://www.destroyallsoftware.com', 'http://www.google.com']
    end
  end
end