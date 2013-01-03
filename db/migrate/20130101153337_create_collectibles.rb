class CreateCollectibles < ActiveRecord::Migration
  def change
    create_table :collectibles do |t|
      t.string :title, :null => false, :limit => 50
      t.string :obj_url, :null => false
      t.string :description
      t.integer :status, :default => 0

      t.timestamps
    end
  end
end
