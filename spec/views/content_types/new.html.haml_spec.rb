require 'rails_helper'

RSpec.describe "content_types/new", type: :view do
  before(:each) do
    assign(:content_type, ContentType.new(
      :name => "MyString",
      :description => "MyText",
      :file_types => "MyString"
    ))
  end

  it "renders new content_type form" do
    render

    assert_select "form[action=?][method=?]", content_types_path, "post" do

      assert_select "input[name=?]", "content_type[name]"

      assert_select "textarea[name=?]", "content_type[description]"

      assert_select "input[name=?]", "content_type[file_types]"
    end
  end
end
