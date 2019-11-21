require 'rails_helper'

RSpec.describe "courses/new", type: :view do
  before(:each) do
    assign(:course, Course.new(
      :name => "MyString",
      :subtitle => "MyString",
      :description => "MyText",
      :price => "9.99",
      :duration => "9.99"
    ))
  end

  it "renders new course form" do
    render

    assert_select "form[action=?][method=?]", courses_path, "post" do

      assert_select "input[name=?]", "course[name]"

      assert_select "input[name=?]", "course[subtitle]"

      assert_select "textarea[name=?]", "course[description]"

      assert_select "input[name=?]", "course[price]"

      assert_select "input[name=?]", "course[duration]"
    end
  end
end
