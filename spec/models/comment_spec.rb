require 'rails_helper'


RSpec.describe Comment, type: :model do

  before(:each) do
      @comment = FactoryGirl.create(:comment)
  end

  it "has a valid factory" do
      expect(@comment).to be_valid
  end

  it "has user post and body" do
    expect(@comment).to have_attributes( user: @comment.user, post: @comment.post, body: @comment.body)
  end
end
