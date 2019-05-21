feature 'index' do
  scenario 'Greeting' do
    visit('/')
    expect(page).to have_content 'Hello World!'
  end 
end

feature 'Bookmarks' do
  scenario 'can see bookmark links' do 
    visit('/bookmarks')
    expect(page).to have_link 'Makers'
    expect(page).to have_link 'Google'
    expect(page).to have_link 'Yahoo'
  end 

  scenario 'can see list of bookmarks' do 
    visit('/bookmarks')
    expect(page).to have_content 'Makers'
    expect(page).to have_content 'Google'
    expect(page).to have_content 'Yahoo'
  end 
end 
