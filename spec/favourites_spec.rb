require 'favourites'

describe Favourites do 
  describe '.favourites' do
    it 'returns a list of bookmarks' do
        bookmarks = Favourites.new.all
        expect(bookmarks).to eq ['https://makers.tech', 'https://www.google.com', 'https://www.yahoo.com']
    end
end
end