require 'spec_helper'

describe "bugs/index" do
  before(:each) do
    assign(:bugs, [
      stub_model(Bug,
        :name => "Name",
        :project => "Project",
        :issue => "Issue"
      ),
      stub_model(Bug,
        :name => "Name",
        :project => "Project",
        :issue => "Issue"
      )
    ])
  end

  it "renders a list of bugs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Project".to_s, :count => 2
    assert_select "tr>td", :text => "Issue".to_s, :count => 2
  end
end
