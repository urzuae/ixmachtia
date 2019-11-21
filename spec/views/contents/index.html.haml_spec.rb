require 'rails_helper'

RSpec.describe "contents/index", type: :view do
  before(:each) do
    assign(:contents, [
      Content.create!(
        :title => "Title",
        :order => "",
        :chapter => nil,
        :content_type => nil
      ),
      Content.create!(
        :title => "Title",
        :order => "",
        :chapter => nil,
        :content_type => nil
      )
    ])
  end

  it "renders a list of contents" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
