class Admin::PostsController < ApplicationController
  layout "admin"
  before_action :authenticate_user!
  before_action :admin_required
  before_action :find_photos
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end


  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to admin_posts_path
    else
      render :new
    end
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to admin_posts_path
    else
      render :edit
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to admin_posts_path, alert: '文章已刪除'
  end
  private

    def post_params
      params.require(:post).permit(:title, :content)
    end
end
