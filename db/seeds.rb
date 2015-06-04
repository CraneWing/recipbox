require 'faker'
include Faker

1.times do
   post = Post.create(
      :topic_id => Number.number(1),
      :user_id => Number.number(1),
      :title => Lorem.words(12),
      :body => Lorem.paragraphs(2),
      :created_at => Faker::Time.between(1.year.ago, Time.now, :all)
   )
end
