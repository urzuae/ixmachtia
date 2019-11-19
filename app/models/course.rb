class Course < ApplicationRecord
  belongs_to :user

  has_many :chapters, dependent: :delete_all

  has_one_attached :thumbnail
end
