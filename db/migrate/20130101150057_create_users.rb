class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users,:force => true, :options => 'ENGINE=InnoDB DEFAULT CHARSET=utf8' do |t|
      t.string :username, :limit => 50, :null => false
      t.string :password, :limit => 50, :null => false, :default => "123456"
      t.string :nickname
      t.string :email, :limit => 100, :null => false
      t.integer :status, :default => 0 , :limit => 2
      t.string :site_url
      t.string :remark
      t.string :phone
      t.integer :identity, :default => 0, :limit => 2

      t.timestamps
    end
  end
end
