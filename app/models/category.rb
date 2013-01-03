class Category < ActiveRecord::Base
  attr_accessible :name, :parent_id, :status
  scope :parent, where(:parent_id => 0)
  scope :sub_nodes, lambda{|p_id| where(:parent_id => p_id)}

  def self.all_categories_by_group
    arr = []
    Category.parent.order("id asc").each_with_index{ |c,idx|
      p = Hash.new
      p["id"] = c.id
      p["name"] = c.name
      p["children"] = Category.sub_nodes(c.id).order("id asc") || []
      arr[idx] = p
    }
    arr
  end
end
