require './app'

feature 'Testing UI form' do
  scenario 'User can enter name and birthday date' do
    visit('/')
    name = 'name'
    day = 30
    fill_in 'your_name', with: name
    fill_in 'your_birthday_day', with: day
    select('January', from: 'your_birthday_month')
    click_button 'Go!'
    expect(page).to have_content(name)
  end

end
