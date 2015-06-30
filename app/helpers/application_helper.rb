module ApplicationHelper
   
   # display custom page titles - from David Lesches on Rails blog
   def title(title = nil)
      if title.present?
         content_for :title, title
      else
         content_for?(:title) ? APP_CONFIG['default_title'] + ' | ' +  content_for(:title) : APP_CONFIG['default_title']
      end
      
   end
   
   # for jQuery timeago plugin - from Brandon Hilkert
   def timeago(time, options = {})
     options[:class] ||= "timeago"
     content_tag(
       :time,
       time.to_s,
       options.merge(datetime: time.getutc.iso8601)
     ) if time
   end
   
    # bootstrap classes to flash alerts - from Mark Berry via Stack Overflow
   def flash_class(level)
      case level
         when :notice then 'alert alert-info'
         when :success then 'alert alert-success'
         when :error then 'alert alert-danger'
         when :alert then 'alert alert-info'
      end
   end
   
   # changes view on top of topic and post pages to show user logged in or not
   def forum_signed_in
      if user_signed_in?
         render 'layouts/forums_shared/logged_in'
      else
         render 'layouts/forums_shared/not_logged'
      end
   end
   
   # shows user level in the forum based on number of posts
   def post_level(count)
      case count
      when (0..30)
         return 'Apprentice'
      when (31..75)
         return 'Junior Cook'
      when (76..125)
         return 'Chef'
      when (126..250)
         return 'Sous Chef'
      when count > 251
         return 'Executive Chef'
      end
   end
   
   # creates the number of stars graphic for each review
   def build_stars(stars)
      i = 0
      j = 0
      star_line = ''
      open_star = 5 - stars
      while i < stars
         star_line += '<img src="app/assets/images/star-full.png">'
         i+=1
      end
      while j < open_star
        star_line += '<img src="app/assets/images/star-gray.png">'
        j+=1
      end
      return star_line.html_safe
   end
   
   # returns number of hours and minutes left user has to edit post or comment
   def time_compare(create_time, expire_time, item, item_elem)
      time_left = expire_time - Time.now
      hours = ((time_left)/3600).to_i
      minutes = minutes = (time_left/60 - hours * 60).to_i
      if time_left > 0
         return "<p><strong>This is your #{item}, and you have #{hours} hours, #{minutes} minutes left if you want to edit it. Just click on the #{item_elem}, and you can change it right here! Basic HTML tags and emoji are permitted.</strong></p>".html_safe
      else
         return "<p><strong>This is your #{item}, but your time period for editing it has expired.</strong></p>".html_safe
      end
   end 
end
