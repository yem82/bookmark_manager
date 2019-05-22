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
    expect(page).to have_link 'Destroy All Software'
    expect(page).to have_link 'Google'
  end

  scenario 'can see list of bookmarks' do
    visit('/bookmarks')
    expect(page).to have_content 'Makers'
    expect(page).to have_content 'Destroy All Software'
    expect(page).to have_content 'Google'
  end
end
