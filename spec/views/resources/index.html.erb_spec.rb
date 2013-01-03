require 'spec_helper'

describe "resources/index" do
  before(:each) do
    assign(:resources, [
      stub_model(Resource,
        :obj_id => 1,
        :obj_type => 2,
        :status => 3,
        :title => "Title",
        :summary => "Summary",
        :attatch_file_name => "Attatch File Name",
        :attatch_file_size => 4,
        :attatch_content_type => "Attatch Content Type"
      ),
      stub_model(Resource,
        :obj_id => 1,
        :obj_type => 2,
        :status => 3,
        :title => "Title",
        :summary => "Summary",
        :attatch_file_name => "Attatch File Name",
        :attatch_file_size => 4,
        :attatch_content_type => "Attatch Content Type"
      )
    ])
  end

  it "renders a list of resources" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Summary".to_s, :count => 2
    assert_select "tr>td", :text => "Attatch File Name".to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => "Attatch Content Type".to_s, :count => 2
  end
end
