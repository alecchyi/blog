class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.integer :obj_id
      t.integer :obj_type
      t.integer :status
      t.string :title
      t.string :summary
      t.string :attatch_file_name
      t.integer :attatch_file_size
      t.string :attatch_content_type

      t.timestamps
    end
  end
end
