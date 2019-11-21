require 'rails_helper'

RSpec.describe "chapters/edit", type: :view do
  before(:each) do
    @chapter = assign(:chapter, Chapter.create!(
      :title => "MyString",
      :description => "MyText",
      :order => "",
      :course => nil
    ))
  end

  it "renders the edit chapter form" do
    render

    assert_select "form[action=?][method=?]", chapter_path(@chapter), "post" do

      assert_select "input[name=?]", "chapter[title]"

      assert_select "textarea[name=?]", "chapter[description]"

      assert_select "input[name=?]", "chapter[order]"

      assert_select "input[name=?]", "chapter[course_id]"
    end
  end
end
