require 'faker'

350.times do
   post = Post.create!(
      topic_id: rand(1..9),
      user_id: rand(1..155),
      title: Faker::Lorem.sentence(rand(5..10)).chomp('.'),
      body: Faker::Lorem.paragraphs(rand(1..4)).join('<br><br>'),
      created_at: Faker::Time.between(1.year.ago, Time.now, :all)
   )
end


950.times do
   comment = Comment.create!(
      post_id: rand(1..350),
      user_id: rand(1..155),
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
