class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :article_id, :null => false
      t.integer :user_id, :null => false
      t.integer :status , :default => 0
      t.string :content, :null => false, :limit => 1000

      t.timestamps
    end
  end
end
