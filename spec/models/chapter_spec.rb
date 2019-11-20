require 'rails_helper'

RSpec.describe Chapter, type: :model do
  describe "validations" do
    it { should validate_presence_of :title }
    it { should validate_presence_of :description }
    it { should validate_presence_of :course }
  end
end
