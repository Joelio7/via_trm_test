FactoryGirl.define do
  factory :post do
    user  {FactoryGirl.create(:user)} 
    title {RandomData.random_sentence}
    body {RandomData.random_paragraph}
  end
end
