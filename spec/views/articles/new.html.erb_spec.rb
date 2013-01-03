require 'spec_helper'

describe "articles/new" do
  before(:each) do
    assign(:article, stub_model(Article,
      :title => "MyString",
      :subtitle => "MyString",
      :summary => "MyString",
      :content => "MyString",
      :status => 1,
      :user_id => 1
    ).as_new_record)
  end

  it "renders new article form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => articles_path, :method => "post" do
      assert_select "input#article_title", :name => "article[title]"
      assert_select "input#article_subtitle", :name => "article[subtitle]"
      assert_select "input#article_summary", :name => "article[summary]"
      assert_select "input#article_content", :name => "article[content]"
      assert_select "input#article_status", :name => "article[status]"
      assert_select "input#article_user_id", :name => "article[user_id]"
    end
  end
end
