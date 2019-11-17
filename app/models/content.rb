class Content < ApplicationRecord
  belongs_to :chapter
  belongs_to :content_type
end
