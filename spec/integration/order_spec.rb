require 'spec_helper'

feature 'log in process', :js => true do
  scenario 'lets user log in' do
    visit '/sessions/new'
    fill_in 'Email', :with => 'user@example.com'
    fill_in 'Password', :with => 'password'
    click_button 'Sign in'
    expect(page).to have_content 'Success'
  end
end
