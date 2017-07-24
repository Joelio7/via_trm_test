class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  validates :title, :presence => true
  validates :title, :format => {:with => /.{5,25}/, :message => "Maximum 25 Characters"}
  validates :body, :presence => true
end
