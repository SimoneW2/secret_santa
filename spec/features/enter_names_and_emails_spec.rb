
feature 'Test path for the index.erb file' do
  scenario '' do
  visit('/')
  expect(page).to have_content 'Secret Santa'
  end
end

feature 'Entering in the names and emails' do
  scenario 'Enter 2 name and 2 emails' do
    visit('/')
    fill_in :name_1, with: 'Simone'
    fill_in :email_1, with: 'simone@gmail.com'
    fill_in :name_2, with: 'Michael'
    fill_in :email_2, with: 'michael@gmail.com'
    click_button 'Submit'
    expect(page).to have_content 'Simone - simone@gmail.com, Michael -  michael@gmail.com'
  end
end
