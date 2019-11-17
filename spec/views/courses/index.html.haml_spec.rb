require 'rails_helper'

RSpec.describe "courses/index", type: :view do
  before(:each) do
    assign(:courses, [
      Course.create!(
        :name => "Name",
        :subtitle => "Subtitle",
        :description => "MyText",
        :price => "9.99",
        :duration => "9.99"
      ),
      Course.create!(
        :name => "Name",
        :subtitle => "Subtitle",
        :description => "MyText",
        :price => "9.99",
        :duration => "9.99"
      )
    ])
  end

  it "renders a list of courses" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Subtitle".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
