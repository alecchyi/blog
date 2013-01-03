require 'spec_helper'

describe "collectibles/new" do
  before(:each) do
    assign(:collectible, stub_model(Collectible,
      :title => "MyString",
      :obj_url => "MyString",
      :description => "MyString",
      :status => 1
    ).as_new_record)
  end

  it "renders new collectible form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => collectibles_path, :method => "post" do
      assert_select "input#collectible_title", :name => "collectible[title]"
      assert_select "input#collectible_obj_url", :name => "collectible[obj_url]"
      assert_select "input#collectible_description", :name => "collectible[description]"
      assert_select "input#collectible_status", :name => "collectible[status]"
    end
  end
end
