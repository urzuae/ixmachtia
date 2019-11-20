class Course < ApplicationRecord
  belongs_to :user

  has_many :chapters, dependent: :delete_all

  has_one_attached :thumbnail

  validates_presence_of :name, :subtitle, :description, :price, :duration
end
