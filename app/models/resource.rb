class Resource < ActiveRecord::Base
  attr_accessible :attatch_content_type, :attatch_file_name, :attatch_file_size, :obj_id, :obj_type, :status, :summary, :title
end
