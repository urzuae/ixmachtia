require 'rails_helper'

RSpec.describe "content_types/index", type: :view do
  before(:each) do
    assign(:content_types, [
      ContentType.create!(
        :name => "Name",
        :description => "MyText",
        :file_types => "File Types"
      ),
      ContentType.create!(
        :name => "Name",
        :description => "MyText",
        :file_types => "File Types"
      )
    ])
  end

  it "renders a list of content_types" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "File Types".to_s, :count => 2
  end
end
