require 'faker'

#60.times do
#   blog_comment = BlogComment.create!(
#      blog_post_id: rand(1..18),
#      user_id: rand(1..10),
#      body: Faker::Lorem.paragraphs(rand(1..3)).join('<br><br>'),
#      created_at: Faker::Time.between(2.months.ago, Time.now, :all)
#   )
#end

#18.times do
#  blog_post = BlogPost.create!(
#    blogger_id: rand(1..3),
#    title: Faker::Lorem.sentence(rand(5..8)).chomp('.'),
#    body: Faker::Lorem.paragraphs(rand(7..12)).join('<br><br>'),
#    created_at: Faker::Time.between(2.months.ago, Time.now, :all)
#  )
#end

#65.times do
#  review = Review.create!(
#       user_id: rand(1..155),
#       recipe_id: rand(1..14),
#       stars: rand(3..5),
#       body: Faker::Lorem.paragraphs(rand(1..3)).join('<br><br>'),
#       created_at: Faker::Time.between(1.year.ago, Time.now, :all),
#       approved: 1
#  )
#   
#end

150.times do
   post = Post.create!(
      topic_id: rand(2..10),
      user_id: rand(1..8),
      title: Faker::Lorem.sentence(rand(5..10)).chomp('.'),
      body: Faker::Lorem.paragraphs(rand(1..4)).join('<br><br>'),
      created_at: Faker::Time.between(1.year.ago, Time.now, :all)
   )
end


300.times do
   comment = Comment.create!(
      post_id: rand(1..150),
      user_id: rand(1..8),
      body: Faker::Lorem.paragraphs(rand(1..4)).join('<br><br>'),
      created_at: Faker::Time.between(1.year.ago, Time.now, :all)
   )
end

#155.times do
#  user = User.create!(
#    first_name: Faker::Name.first_name,
#    last_name: Faker::Name.last_name,
#    username: Faker::Internet.user_name,
#    email: Faker::Internet.safe_email,
#    password: Faker::Internet.password(8, 16),
#    location: Faker::Address.city + ', ' + Faker::Address.state_abbr,
#    profile: Faker::Lorem.sentence(rand(15..60)),
#    avatar: 'avatar' + (1 + rand(180)).to_s + '.jpg',
#    created_at: Faker::Time.between(1.year.ago, Time.now, :all)
#    )
#end
