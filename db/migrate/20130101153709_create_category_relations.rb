class CreateCategoryRelations < ActiveRecord::Migration
  def change
    create_table :category_relations do |t|
      t.integer :obj_id, :null => false
      t.integer :category_id, :null => false
      t.integer :status, :default => 0
      t.integer :is_recommended, :default => 0
      t.integer :is_toped, :default => 0
      t.datetime :recommended_at
      t.datetime :toped_at

      t.timestamps
    end
  end
end
