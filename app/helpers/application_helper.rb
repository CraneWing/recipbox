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
   
   def forum_signed_in
      if user_signed_in?
         render 'layouts/forums_shared/logged_in'
      else
         render 'layouts/forums_shared/not_logged'
      end
   end
      
end
