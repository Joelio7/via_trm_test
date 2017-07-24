require 'rails_helper'


RSpec.describe User, type: :model do

  before(:each) do
      @user = FactoryGirl.create(:user)
  end

  it "has a valid factory" do
      expect(@user).to be_valid
  end

  it "has first_name, last_name, password, and email" do
    expect(@user).to have_attributes( first_name: @user.first_name, last_name: @user.last_name, password: @user.password, email: @user.email)
  end
end
