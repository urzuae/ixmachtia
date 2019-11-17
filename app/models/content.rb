class Content < ApplicationRecord
  belongs_to :chapter
  belongs_to :content_type

  before_validation :set_up_order, on: :create

  def set_up_order
    self.order = self.chapter.contents.length + 1
  end
end
