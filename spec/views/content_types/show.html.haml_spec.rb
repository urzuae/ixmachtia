require 'rails_helper'

RSpec.describe "content_types/show", type: :view do
  before(:each) do
    @content_type = assign(:content_type, ContentType.create!(
      :name => "Name",
      :description => "MyText",
      :file_types => "File Types"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/File Types/)
  end
end
