class Article < ActiveRecord::Base
  attr_accessible :content, :status, :subtitle, :summary, :title, :user_id
end
