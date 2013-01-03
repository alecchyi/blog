namespace :init do
    desc "init_data"
   task :init_categories => :environment do
        puts "init begin"
        User.create({:username => "ruby", :password => "rails", :email => "alecchyi@gmail.com", :nickname => "Ruby"})
        Category.create({:name => "技术", :parent_id => 0})
        Category.create({:name => "笔记", :parent_id => 0})
        Category.create({:name => "生活", :parent_id => 0})
        Category.create({:name => "收藏", :parent_id => 0})
        Category.create({:name => "其他", :parent_id => 0})
        puts "init finished"
   end
end