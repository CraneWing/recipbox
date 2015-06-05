require 'faker'
include Faker

100.times do
   post = Post.create(
      :topic_id => Number.number.between(1..9),
      :user_id => Number.number(1..55),
      :title => Lorem.sentence(rand(5..12)).chomp('.'),
      :body => Lorem.paragraphs(rand(1..4)).join('<br>'),
      :created_at => Faker::Time.between(1.year.ago, Time.now, :all)
   )
end

300.times do
   comment = Comment.create(
      :post_id => Number.number.between(1..100),
      :user_id => Number.number.between(1..55),
      :body => Lorem.paragraphs(rand(1..4)).join('<br>'),
      :created_at => Faker::Time.between(1.year.ago, Time.now, :all)
   )
end

50.times do
  user = User.create(
    :first_name => Name.first_name,
    :last_name => Name.last_name,
    :username => Internet.user_name('Nancy Johnson', %w(. _ -)),
    :email => Internet.safe_email,
    :password => Internet.password(8, 16),
    :location => Address.city + ', ' + Address.state,
    :profile => Lorem.sentence(rand(15..60)),
    :avatar => Avatar.image("user-img", "45x45", "jpg")
  )
end
