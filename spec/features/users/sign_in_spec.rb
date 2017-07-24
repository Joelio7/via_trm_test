require 'rails_helper'

describe "Signing In users", :type => :feature do
  before :each do
    @user = FactoryGirl.create(:user)
  end

  it "signs me in" do
    visit '/users/sign_in'
    within(".modal-content") do
      fill_in 'Email', with: @user.email
      fill_in 'Password', with: @user.password
    end
    click_button 'Log in'
    expect(page).to have_content 'Post Feed'
  end
end
