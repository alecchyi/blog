require 'spec_helper'

describe "collectibles/show" do
  before(:each) do
    @collectible = assign(:collectible, stub_model(Collectible,
      :title => "Title",
      :obj_url => "Obj Url",
      :description => "Description",
      :status => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Obj Url/)
    rendered.should match(/Description/)
    rendered.should match(/1/)
  end
end
