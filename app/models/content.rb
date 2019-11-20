class Content < ApplicationRecord
  belongs_to :chapter
  belongs_to :content_type

  before_create :set_up_order
  before_save :set_content

  has_one_attached :file

  scope :ordered, -> { order(order: :asc) }

  validates_presence_of :title, :content_type, :chapter
  validates_presence_of :text, unless: :file
  validates_presence_of :file, unless: :text

  def set_up_order
    self.order = self.chapter.contents.length + 1
  end

  def set_content
    self.text = "" if self.content_type.name != "Text"
    self.file.purge if self.content_type.name == "Text"
  end
end
