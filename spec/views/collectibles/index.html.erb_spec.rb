require 'spec_helper'

describe "collectibles/index" do
  before(:each) do
    assign(:collectibles, [
      stub_model(Collectible,
        :title => "Title",
        :obj_url => "Obj Url",
        :description => "Description",
        :status => 1
      ),
      stub_model(Collectible,
        :title => "Title",
        :obj_url => "Obj Url",
        :description => "Description",
        :status => 1
      )
    ])
  end

  it "renders a list of collectibles" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Obj Url".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
