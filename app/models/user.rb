class User < ActiveRecord::Base
  attr_accessible :email, :nickname, :password, :phone, :remark, :site_url, :status, :username
end
