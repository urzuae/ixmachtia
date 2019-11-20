require 'rails_helper'

RSpec.describe Course, type: :model do
  describe "validations" do
    it { should validate_presence_of :name }
    it { should validate_presence_of :subtitle }
    it { should validate_presence_of :description }
    it { should validate_presence_of :price }
    it { should validate_presence_of :duration }
  end
end
