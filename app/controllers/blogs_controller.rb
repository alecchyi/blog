class BlogsController < ApplicationController

  def index
  	flash.now[:notice] = "demo"
     @blogs = Article.all
  end
end
