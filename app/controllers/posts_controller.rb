class PostsController < ApplicationController
  #layout "footer",:except => [:show]
  layout "footer"
  before_action :find_photos
  def index
    @posts = Post.order("id DESC")
  end

  def show
    @post = Post.find(params[:id])

  end

  def daycare
    
  end

end
