class HomeController < ApplicationController
  
  def index
    @photos = Instagram.user_recent_media("2237983589", {:count => 10})
  end

end
