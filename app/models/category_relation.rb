class CategoryRelation < ActiveRecord::Base
  attr_accessible :category_id, :is_recommended, :is_toped, :obj_id, :recommended_at, :status, :toped_at
end
