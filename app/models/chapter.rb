class Chapter < ApplicationRecord
  belongs_to :course

  before_validation :set_up_order

  def set_up_order
    self.order = self.course.chapters.length + 1
  end
end
