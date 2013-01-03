class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title, :null => false, :limit => 100
      t.string :subtitle, :limit => 100
      t.string :summary, :null => false, :limit => 500
      t.string :content, :null => false, :limit => 3000
      t.integer :status, :null => false, :limit => 2
      t.integer :user_id, :null => false

      t.timestamps
    end
  end
end
