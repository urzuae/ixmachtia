class Chapter < ApplicationRecord
  belongs_to :course

  has_many :contents, dependent: :delete_all

  before_create :set_up_order

  has_one_attached :thumbnail

  scope :ordered, -> { order(order: :asc) }

  validates_presence_of :title, :description, :course

  def set_up_order
    self.order = self.course.chapters.length + 1
  end
end
