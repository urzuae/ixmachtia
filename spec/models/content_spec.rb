require 'rails_helper'

RSpec.describe Content, type: :model do
  let(:chapter) { FactoryBot.create(:chapter)}
  let(:content_1) { FactoryBot.create(:content, chapter: chapter)} 
  let(:content_2) { FactoryBot.create(:content, chapter: chapter) }

  describe "validations" do
    it { should validate_presence_of :title }
    it { should validate_presence_of :content_type }
    it { should validate_presence_of :chapter }

    context "order of contents" do
      before do
        content_1
        content_2
      end

      it "should order created items" do
        subject
        expect(content_1.order).to equal(1)
        expect(content_2.order).to equal(1)
      end
    end
  end
end
