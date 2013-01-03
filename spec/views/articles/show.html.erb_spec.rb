require 'spec_helper'

describe "articles/show" do
  before(:each) do
    @article = assign(:article, stub_model(Article,
      :title => "Title",
      :subtitle => "Subtitle",
      :summary => "Summary",
      :content => "Content",
      :status => 1,
      :user_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Subtitle/)
    rendered.should match(/Summary/)
    rendered.should match(/Content/)
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
