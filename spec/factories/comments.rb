FactoryGirl.define do
  factory :comment do
    user  {FactoryGirl.create(:user)} 
    post {FactoryGirl.create(:post)}
    body {RandomData.random_paragraph}
  end
end
