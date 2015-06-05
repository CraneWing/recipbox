require 'faker'

emojis = [
         ':smile:', ':laughing:', ':blush:', ':smiley:', ':relaxed:' ':smirk:',
         ':flushed:', ':relieved:', ':satisfied:', ':grin:', ':wink:', ':kissing:',
         ':sleeping:', ':worried:', ':frowning:', ':anguished:', ':open_mouth:',
         ':grimacing:', ':sweat:', ':pensive:', ':persevere:', ':cry:', ':scream:',
         ':angry:', ':yum:', ':thumbsdown:', ':ok_hand:', ':cat:', ':dog:', ':mouse:',
         ':rabbit:', ':pig:', ':cow:',  ':chicken:', ':sunflower:', ':hibiscus:', ':herb:',
         ':mushroom:', ':beer:', ':cocktail:', ':tropical_drink:', ':wine_glass:',
         ':fork_and_knife:', ':pizza:', ':hamburger:', ':fries:', ':poultry_leg:',
         ':meat_on_bone:', ':spaghetti:', ':fried_shrimp:', ':sushi:', ':egg:', ':bread:',
         ':doughnut:', ':custard:', ':icecream:', ':cake:', ':cookie:', ':chocolate_bar:',
         ':candy:', ':honey_pot:', ':apple:', ':cherries:', ':grapes:', ':watermelon:',
         ':strawberry:', ':peach:', ':banana:', ':pear:', ':pineapple:', ':tomato:', ':corn:'
         ]

150.times do
   post = Post.create(
      :topic_id => rand(1..9),
      :user_id => rand(1..155),
      :title => Faker::Lorem.sentence(rand(5..12)).chomp('.'),
      :body => Faker::Lorem.paragraphs(rand(1..4)).push(emojis.sample(1)).join('<br><br>'),
      :created_at => Faker::Time.between(1.year.ago, Time.now, :all)
   )
end


400.times do
   post = Post.create(
      :topic_id => rand(1..9),
      :user_id => rand(1..155),
      :title => Faker::Lorem.sentence(rand(5..12)).chomp('.'),
      :body => Faker::Lorem.paragraphs(rand(1..4)).join('<br><br>'),
      :created_at => Faker::Time.between(1.year.ago, Time.now, :all)
   )
end

700.times do
   comment = Comment.create(
      :post_id => rand(1..100),
      :user_id => rand(1..155),
      :body => Faker::Lorem.paragraphs(rand(1..4)).join('<br><br>'),
      :created_at => Faker::Time.between(1.year.ago, Time.now, :all)
   )
end

250.times do
   comment = Comment.create(
      :post_id => rand(1..100),
      :user_id => rand(1..62),
      :body => Faker::Lorem.paragraphs(rand(1..4)).push(emojis.sample(1)).join('<br><br>'),
      :created_at => Faker::Time.between(1.year.ago, Time.now, :all)
   )
end

155.times do
  user = User.create(
    :first_name => Faker::Name.first_name,
    :last_name => Faker::Name.last_name,
    :username => Faker::Internet.user_name,
    :email => Faker::Internet.safe_email,
    :password => Faker::Internet.password(8, 16),
    :location => Faker::Address.city + ', ' + Faker::Address.state,
    :profile => Faker::Lorem.sentence(rand(15..60)),
    :avatar => Faker::Avatar.image
  )
end
