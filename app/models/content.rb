class Content < ApplicationRecord
  belongs_to :chapter
  belongs_to :content_type

  before_validation :set_up_order, on: :create
  before_save :set_content, on: :save

  has_one_attached :file

  def set_up_order
    self.order = self.chapter.contents.length + 1
  end

  def set_content
    self.text = "" if self.content_type.name != "Text"
    self.file.purge if self.content_type.name == "Text"
  end

end
