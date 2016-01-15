class PostsController < ApplicationController
  before_action :find_photos
  def index
    @posts = Post.order("id DESC")
     set_page_title "寵物安親｜寵物住宿｜寵物美容"
     set_page_description (" 一家三口動物旅館成立於2015年10月，位於桃園市桃園區民生路上，一家三口是一間安全、健康、溫暖的動物旅館，在這裡提供寵物美容、寵物住宿、寵物安親的服務。地址：桃園市桃園區民生路495號之9 33043，電話是03-3363252，email：elite.eah@gmail.com")
     set_page_keywords ('一家三口,寵物安親,寵物美容,寵物住宿,寵物,狗狗,貓咪,homepage')
  end

  def show
    @post = Post.find(params[:id])
     set_page_title "最新消息"
     set_page_description ("一家三口動物旅館:地址：桃園市桃園區民生路495號之9 33043，電話是03-3363252，email：elite.eah@gmail.com，一家三口動物旅館最新消息，我們有寵物美容、寵物住宿、寵物安親優質服務。")
     set_page_keywords ('一家三口,寵物安親,寵物美容,寵物住宿,狗狗,貓咪,寵物,latest news')
  end

  def daycare
    set_page_title "寵物安親Daycare"
    set_page_description ("一家三口動物旅館:地址：桃園市桃園區民生路495號之9 33043，電話是03-3363252，email：elite.eah@gmail.com，一家三口動物旅館寵物安親服務，一家三口動物旅館秉持著貼心、溫暖、像家。")
    set_page_keywords ('一家三口,寵物安親,寵物美容,寵物住宿,狗狗,貓咪,寵物,daycare')
  end

  def grooming
    set_page_title "寵物美容Grooming"
    set_page_description ("一家三口動物旅館:地址：桃園市桃園區民生路495號之9 33043，電話是03-3363252，email：elite.eah@gmail.com，一家三口動物旅館寵物美容服務，專業的美容師，讓寶貝們更有自信。")
    set_page_keywords ('一家三口,寵物安親,寵物美容,寵物住宿,狗狗,貓咪,寵物,Grooming')
  end

  def hotel
    set_page_title "寵物住宿Hotel"
    set_page_description ("一家三口動物旅館:地址：桃園市桃園區民生路495號之9 33043，電話是03-3363252，email：elite.eah@gmail.com，一家三口動物旅館寵物住宿服務，安全、像家、但是擁有更多同伴。")
    set_page_keywords ('一家三口,寵物安親,寵物美容,寵物住宿,狗狗,貓咪,寵物,hotel')
  end

  def about
    set_page_title "關於一家三口about us"
    set_page_description ("一家三口動物旅館:地址：桃園市桃園區民生路495號之9 33043，電話是03-3363252，email：elite.eah@gmail.com，一家三口是一間安全、健康、溫暖的動物旅館，在這裡我們提供寵物美容、寵物住宿、寵物安親的服務。")
    set_page_keywords ('一家三口,寵物安親,寵物美容,寵物住宿,狗狗,貓咪,寵物,about')
  end

  def faqs
    set_page_title "問與答Q&A"
    set_page_description ("一家三口是一間安全、健康、溫暖的動物旅館，在這裡提供寵物美容、寵物住宿、寵物安親的服務，寵物安親住宿須知，寵物美容服務")
    set_page_keywords ('一家三口,寵物安親,寵物美容,寵物住宿,狗狗,貓咪,寵物,about')
  end

end
