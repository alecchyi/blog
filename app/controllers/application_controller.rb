class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :blog_title

  def blog_title
    @blog_title = "a programmer's blog"
    @blog_title
  end

  def set_seo_meta(title = '',meta_keywords = '', meta_description = '')
    puts "sssssss"
  end
end
