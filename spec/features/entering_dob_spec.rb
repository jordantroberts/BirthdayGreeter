feature 'user visits home page' do
  it 'prompts a user to enter name and date of birth' do
    visit('/')
    fill_in 'dob', with:
    click_button 'Submit'
    expect(page).to have_content ''
  end
end
