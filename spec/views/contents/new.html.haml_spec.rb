require 'rails_helper'

RSpec.describe "contents/new", type: :view do
  before(:each) do
    assign(:content, Content.new(
      :title => "MyString",
      :order => "",
      :chapter => nil,
      :content_type => nil
    ))
  end

  it "renders new content form" do
    render

    assert_select "form[action=?][method=?]", contents_path, "post" do

      assert_select "input[name=?]", "content[title]"

      assert_select "input[name=?]", "content[order]"

      assert_select "input[name=?]", "content[chapter_id]"

      assert_select "input[name=?]", "content[content_type_id]"
    end
  end
end
