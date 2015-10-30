class HomeController < ApplicationController
  layout "footer"
  def index
    @photos = Instagram.user_recent_media("2237983589", {:count => 10})
    @posts = Post.order("id DESC")
  end

  def show
    @post = Post.find(params[:id])
  end

end
