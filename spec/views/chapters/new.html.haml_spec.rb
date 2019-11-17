require 'rails_helper'

RSpec.describe "chapters/new", type: :view do
  before(:each) do
    assign(:chapter, Chapter.new(
      :title => "MyString",
      :description => "MyText",
      :order => "",
      :course => nil
    ))
  end

  it "renders new chapter form" do
    render

    assert_select "form[action=?][method=?]", chapters_path, "post" do

      assert_select "input[name=?]", "chapter[title]"

      assert_select "textarea[name=?]", "chapter[description]"

      assert_select "input[name=?]", "chapter[order]"

      assert_select "input[name=?]", "chapter[course_id]"
    end
  end
end
