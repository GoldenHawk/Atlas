require 'spec_helper'

describe "tests/new" do
  before(:each) do
    assign(:test, stub_model(Test,
      :name => "MyString",
      :project => "MyString",
      :test_purpose => "MyString",
      :status => "MyString"
    ).as_new_record)
  end

  it "renders new test form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", tests_path, "post" do
      assert_select "input#test_name[name=?]", "test[name]"
      assert_select "input#test_project[name=?]", "test[project]"
      assert_select "input#test_test_purpose[name=?]", "test[test_purpose]"
      assert_select "input#test_status[name=?]", "test[status]"
    end
  end
end
