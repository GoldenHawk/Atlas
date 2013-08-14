require 'spec_helper'

describe "tests/index" do
  before(:each) do
    assign(:tests, [
      stub_model(Test,
        :name => "Name",
        :project => "Project",
        :test_purpose => "Test Purpose",
        :status => "Status"
      ),
      stub_model(Test,
        :name => "Name",
        :project => "Project",
        :test_purpose => "Test Purpose",
        :status => "Status"
      )
    ])
  end

  it "renders a list of tests" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Project".to_s, :count => 2
    assert_select "tr>td", :text => "Test Purpose".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
  end
end
