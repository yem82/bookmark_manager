feature 'index' do
    scenario 'Greeting' do
        visit('/')
        expect(page).to have_content 'Hello World!'
    end 
end

feature 'Bookmarks' do
    scenario 'can see list of bookmarks' do 
        visit('/bookmarks')
        expect(page).to have_content 'Makers Academy'
        expect(page).to have_content 'Google'
        expect(page).to have_content 'Yahoo'
    end 
end 
