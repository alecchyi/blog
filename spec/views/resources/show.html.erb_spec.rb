require 'spec_helper'

describe "resources/show" do
  before(:each) do
    @resource = assign(:resource, stub_model(Resource,
      :obj_id => 1,
      :obj_type => 2,
      :status => 3,
      :title => "Title",
      :summary => "Summary",
      :attatch_file_name => "Attatch File Name",
      :attatch_file_size => 4,
      :attatch_content_type => "Attatch Content Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/Title/)
    rendered.should match(/Summary/)
    rendered.should match(/Attatch File Name/)
    rendered.should match(/4/)
    rendered.should match(/Attatch Content Type/)
  end
end
