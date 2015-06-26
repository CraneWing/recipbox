module ApplicationHelper
   
   # display custom page titles (from David Lesches on Rails blog)
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
   
    # bootstrap classes to flash alerts
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
   def time_compare(create_time, expire_time)
      time_left = expire_time - Time.now
      hours = ((time_left)/3600).to_i
      minutes = minutes = (time_left/60 - hours * 60).to_i
      return "<p><strong>This is your post, and you have #{hours} hours, #{minutes} minutes left if you want to edit it. Just click on the title or body, and you can change it right here! HTML tags and emoji are permitted.</strong></p>".html_safe
   end 
   
   # display star icons on recipe reviews
   def show_stars(star_total)
      star_line = ''
      star_total.to_i.times { star_line += '<%= img_tag "star-full.png" %> '}
      star_open = 5 - star_total.to_i
      star_open.times { star_line += '<%= img_tag "star-open.png" %> '}
      star_line.html_safe
   end   
end
