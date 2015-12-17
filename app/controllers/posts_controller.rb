class PostsController < ApplicationController
  before_action :find_photos
  def index
    @posts = Post.order("id DESC")
  end

  def show
    @post = Post.find(params[:id])

  end

  def daycare
    
  end

  def grooming

  end

  def hotel

  end

  def about

  end

  def faqs

  end

end
