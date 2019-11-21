require 'rails_helper'

RSpec.describe Chapter, type: :model do
  let(:course) { FactoryBot.create(:course) }
  let(:chapter_1) { FactoryBot.create(:chapter, course: course) }
  let(:chapter_2) { FactoryBot.create(:chapter, course: course) }

  describe "validations" do
    it { should validate_presence_of :title }
    it { should validate_presence_of :description }
    it { should validate_presence_of :course }

    context "order of chapters" do
      before do
        chapter_1
        chapter_2
      end

      it "should order created items" do
        subject
        expect(chapter_1.order).to equal(1)
        expect(chapter_2.order).to equal(1)
      end
    end
  end
end
