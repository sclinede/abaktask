require 'spec_helper'

describe "pages/new" do
  before(:each) do
    assign(:page, stub_model(Page,
      :name => "MyString",
      :full_path => "MyString",
      :title => "MyString",
      :text => "MyString",
      :formatted_text => "MyString"
    ).as_new_record)
  end

  it "renders new page form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => pages_path, :method => "post" do
      assert_select "input#page_name", :name => "page[name]"
      assert_select "input#page_full_path", :name => "page[full_path]"
      assert_select "input#page_title", :name => "page[title]"
      assert_select "input#page_text", :name => "page[text]"
      assert_select "input#page_formatted_text", :name => "page[formatted_text]"
    end
  end
end
