require 'favourites'

describe Favourites do 
  describe '.favourites' do
    it 'returns a list of bookmarks' do
        bookmarks = Favourites.new.all
        expect(bookmarks).to eq ['Makers Academy', 'Google', 'Yahoo']
    end
end
end