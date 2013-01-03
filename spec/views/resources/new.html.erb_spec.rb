require 'spec_helper'

describe "resources/new" do
  before(:each) do
    assign(:resource, stub_model(Resource,
      :obj_id => 1,
      :obj_type => 1,
      :status => 1,
      :title => "MyString",
      :summary => "MyString",
      :attatch_file_name => "MyString",
      :attatch_file_size => 1,
      :attatch_content_type => "MyString"
    ).as_new_record)
  end

  it "renders new resource form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => resources_path, :method => "post" do
      assert_select "input#resource_obj_id", :name => "resource[obj_id]"
      assert_select "input#resource_obj_type", :name => "resource[obj_type]"
      assert_select "input#resource_status", :name => "resource[status]"
      assert_select "input#resource_title", :name => "resource[title]"
      assert_select "input#resource_summary", :name => "resource[summary]"
      assert_select "input#resource_attatch_file_name", :name => "resource[attatch_file_name]"
      assert_select "input#resource_attatch_file_size", :name => "resource[attatch_file_size]"
      assert_select "input#resource_attatch_content_type", :name => "resource[attatch_content_type]"
    end
  end
end
