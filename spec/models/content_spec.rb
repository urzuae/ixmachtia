require 'rails_helper'

RSpec.describe Content, type: :model do
  describe "validations" do
    it { should validate_presence_of :title }
    it { should validate_presence_of :content_type }
    it { should validate_presence_of :chapter }

    context "when having text content" do
    end

    context "when having file content" do
    end
  end
end
