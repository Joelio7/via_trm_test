require 'rails_helper'


RSpec.describe Post, type: :model do

  before(:each) do
      @post = FactoryGirl.create(:post)
  end

  it "has a valid factory" do
      expect(@post).to be_valid
  end

  it "has user, title and body" do
    expect(@post).to have_attributes( user: @post.user, title: @post.title, body: @post.body)
  end
end
