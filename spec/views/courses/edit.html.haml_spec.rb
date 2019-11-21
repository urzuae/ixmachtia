require 'rails_helper'

RSpec.describe "courses/edit", type: :view do
  before(:each) do
    @course = assign(:course, Course.create!(
      :name => "MyString",
      :subtitle => "MyString",
      :description => "MyText",
      :price => "9.99",
      :duration => "9.99"
    ))
  end

  it "renders the edit course form" do
    render

    assert_select "form[action=?][method=?]", course_path(@course), "post" do

      assert_select "input[name=?]", "course[name]"

      assert_select "input[name=?]", "course[subtitle]"

      assert_select "textarea[name=?]", "course[description]"

      assert_select "input[name=?]", "course[price]"

      assert_select "input[name=?]", "course[duration]"
    end
  end
end
