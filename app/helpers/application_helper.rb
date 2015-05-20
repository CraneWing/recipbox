module ApplicationHelper
   
   # random background image generator
   def random_bg_image
      image = ['assets/site-img/apple-pie.jpg',
            'assets/site-img/blueberries.jpg',
            'assets/site-img/bread.jpg',
            'assets/site-img/cheese-and-tomato.jpg',
            'assets/site-img/chocolate-cookies.jpg',
            'assets/site-img/chuck-roast.jpg',
            'assets/site-img/colored-pasta.jpg',
            'assets/site-img/cookies.jpg',
            'assets/site-img/cooking-zucchini.jpg',
            'assets/site-img/dishes-salt-pepper.jpg',
            'assets/site-img/dough.jpg',
            'assets/site-img/egg-whisking.jpg',
            'assets/site-img/fish-and-veg.jpg',
            'assets/site-img/fondant-cupcakes.jpg',
            'assets/site-img/french-fries.jpg',
            'assets/site-img/fried-chicken.jpg',
            'assets/site-img/gas-flame.jpg',
            'assets/site-img/green-apple.jpg',
            'assets/site-img/grilled-steak.jpg',
            'assets/site-img/grilling.jpg',
            'assets/site-img/leeks.jpg',
            'assets/site-img/muffin-pan-close.jpg',
            'assets/site-img/multicolor-carrots.jpg',
            'assets/site-img/mushrooms.jpg',
            'assets/site-img/pancakes.jpg',
            'assets/site-img/pasta-and-veg.jpg',
            'assets/site-img/pin-grinder-mortar.jpg',
            'assets/site-img/pizza-ingred.jpg',
            'assets/site-img/pizza.jpg',
            'assets/site-img/pork-spare-ribs.jpg',
            'assets/site-img/roasted-dinner.jpg',
            'assets/site-img/salmon.jpg',
            'assets/site-img/shrimp.jpg',
            'assets/site-img/stainless-kitchen.jpg',
            'assets/site-img/strawberries-cream.jpg',
            'assets/site-img/utensils.jpg'
             ]
      image[rand(image.size)]
   end
   
   # display custom page titles (David Lesches on Rails)
   def title(title = nil)
      if title.present?
         content_for :title, title
      else
         content_for?(:title) ? APP_CONFIG['default_title'] + ' | ' +  content_for(:title) : APP_CONFIG['default_title']
      end
      
   end
   
    # bootstrap classes to flash alerts
   def flash_class(level)
      case level
         when :notice then 'alert alert-info'
         when :success then 'alert alert-success'
         when :error then 'alert alert-danger'
         when :alert then 'alert alert-info'
      end
   end
end
