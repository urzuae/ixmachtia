require 'rails_helper'

RSpec.describe "chapters/index", type: :view do
  before(:each) do
    assign(:chapters, [
      Chapter.create!(
        :title => "Title",
        :description => "MyText",
        :order => "",
        :course => nil
      ),
      Chapter.create!(
        :title => "Title",
        :description => "MyText",
        :order => "",
        :course => nil
      )
    ])
  end

  it "renders a list of chapters" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
