require 'rails_helper'

RSpec.describe "contents/edit", type: :view do
  before(:each) do
    @content = assign(:content, Content.create!(
      :title => "MyString",
      :order => "",
      :chapter => nil,
      :content_type => nil
    ))
  end

  it "renders the edit content form" do
    render

    assert_select "form[action=?][method=?]", content_path(@content), "post" do

      assert_select "input[name=?]", "content[title]"

      assert_select "input[name=?]", "content[order]"

      assert_select "input[name=?]", "content[chapter_id]"

      assert_select "input[name=?]", "content[content_type_id]"
    end
  end
end
