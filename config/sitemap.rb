# Set the host name for URL creation
require 'rubygems'
require 'sitemap_generator'
SitemapGenerator::Sitemap.default_host = "https://www.ghanimalcasa.com"
SitemapGenerator::Sitemap.public_path = 'tmp/sitemaps/'
SitemapGenerator::Sitemap.create do

    add '/index',:changefreq => 'daily', :priority => 0.9
    add '/daycare',:changefreq => 'weekly'
    add '/grooming',:changefreq => 'weekly'
    add '/hotel',:changefreq => 'weekly'
    add '/faqs',:changefreq => 'weekly'
    add '/about',:changefreq => 'weekly'
  # Put links creation logic here.
  #
  # The root path '/' and sitemap index file are added automatically for you.
  # Links are added to the Sitemap in the order they are specified.
  #
  # Usage: add(path, options={})
  #        (default options are used if you don't specify)
  #
  # Defaults: :priority => 0.5, :changefreq => 'weekly',
  #           :lastmod => Time.now, :host => default_host
  #
  # Examples:
  #
  # Add '/articles'
  #
  #   add articles_path, :priority => 0.7, :changefreq => 'daily'
  #
  # Add all articles:
  #
  #   Article.find_each do |article|
  #     add article_path(article), :lastmod => article.updated_at
  #   end
end
SitemapGenerator::Sitemap.ping_search_engines
