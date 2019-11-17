require 'rails_helper'

RSpec.describe "content_types/edit", type: :view do
  before(:each) do
    @content_type = assign(:content_type, ContentType.create!(
      :name => "MyString",
      :description => "MyText",
      :file_types => "MyString"
    ))
  end

  it "renders the edit content_type form" do
    render

    assert_select "form[action=?][method=?]", content_type_path(@content_type), "post" do

      assert_select "input[name=?]", "content_type[name]"

      assert_select "textarea[name=?]", "content_type[description]"

      assert_select "input[name=?]", "content_type[file_types]"
    end
  end
end
