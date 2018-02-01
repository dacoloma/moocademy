class Course < ApplicationRecord
  has_many :lessons
  validates :title, presence: true
  validates :description, presence: true,  length: {maximum: 500}
end
