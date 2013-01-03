class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories,:force => true, :options => 'ENGINE=InnoDB DEFAULT CHARSET=utf8' do |t|
      t.integer :parent_id, :limit => 8, :null => false
      t.string :name, :limit => 50, :null => false
      t.integer :status, :limit => 1, :null => false, :default => 0

      t.timestamps
    end
  end
end
