require 'spec_helper'

describe "bugs/new" do
  before(:each) do
    assign(:bug, stub_model(Bug,
      :name => "MyString",
      :project => "MyString",
      :issue => "MyString"
    ).as_new_record)
  end

  it "renders new bug form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", bugs_path, "post" do
      assert_select "input#bug_name[name=?]", "bug[name]"
      assert_select "input#bug_project[name=?]", "bug[project]"
      assert_select "input#bug_issue[name=?]", "bug[issue]"
    end
  end
end
