#patch for webrat redirect behavior, per
# http://stackoverflow.com/questions/2974330/webrat-and-rails-using-assert-contain-after-click-button-gives-me-you-are-being/3478147#3478147
module Webrat
  class Session
    def current_host 
      URI.parse(current_url).host || @custom_headers["Host"] || 
          default_current_host 
    end 
    
    def default_current_host 
      (adapter.class==Webrat::RackAdapter) ? "example.org" : "www.example.com" 
    end
  end
end