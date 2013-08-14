require 'spec_helper'

describe "tests/edit" do
  before(:each) do
    @test = assign(:test, stub_model(Test,
      :name => "MyString",
      :project => "MyString",
      :test_purpose => "MyString",
      :status => "MyString"
    ))
  end

  it "renders the edit test form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", test_path(@test), "post" do
      assert_select "input#test_name[name=?]", "test[name]"
      assert_select "input#test_project[name=?]", "test[project]"
      assert_select "input#test_test_purpose[name=?]", "test[test_purpose]"
      assert_select "input#test_status[name=?]", "test[status]"
    end
  end
end
