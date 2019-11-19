class Chapter < ApplicationRecord
  belongs_to :course

  has_many :contents, dependent: :delete_all

  before_validation :set_up_order, on: :create

  has_one_attached :thumbnail

  scope :ordered, -> { order(order: :asc) }

  def set_up_order
    self.order = self.course.chapters.length + 1
  end
end
