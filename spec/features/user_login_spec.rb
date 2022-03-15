require 'rails_helper'

RSpec.feature "Visitor login", type: :feature, js: true do

  # SETUP
  before :each do

    @user = User.create!(
      
      name: 'John',
      email: 'john@example.com',
      password: '123456abcdef',
      password_confirmation: '123456abcdef'
    )

  end

  scenario "They see their name on nav bar" do
    # ACT
    visit root_path

    click_on('Login') 
  
    # VERIFY
    expect(page).to have_content('Email')

    fill_in :email, with: @user.email
    fill_in :password, with: @user.password

    click_on('Submit')

    # VERIFY
    expect(page).to have_content('Signed in as: John')

  end
end
