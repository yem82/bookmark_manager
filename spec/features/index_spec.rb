feature 'index' do
  scenario 'Greeting' do
    visit('/')
    expect(page).to have_content 'Hello World!'
  end
end
