require 'spec_helper'

describe "projects/index" do
  before(:each) do
    assign(:projects, [
      stub_model(Project,
        :name => "Name",
        :version => "Version",
        :description => "Description"
      ),
      stub_model(Project,
        :name => "Name",
        :version => "Version",
        :description => "Description"
      )
    ])
  end

  it "renders a list of projects" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Version".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
