class Collectible < ActiveRecord::Base
  attr_accessible :description, :obj_url, :status, :title
end
