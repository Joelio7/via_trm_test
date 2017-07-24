require 'random_data'

5.times do
  User.create!(
    first_name:  RandomData.random_name,
    last_name:   RandomData.random_name,
    status: RandomData.random_sentence,
    email:    RandomData.random_email,
    password: RandomData.random_sentence
  )
end
users = User.all

50.times do
   Post.create!(
     user:   users.sample,
     title:  RandomData.random_sentence,
     body:   RandomData.random_paragraph + RandomData.random_paragraph
   )
 end
 posts = Post.all

100.times do
   Comment.create!(
     user: users.sample,
     post: posts.sample,
     body: RandomData.random_paragraph
   )
 end
