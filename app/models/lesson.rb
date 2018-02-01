class Lesson < ApplicationRecord
  #belongs_to :course
  validates :title, presence: true, length: {maximum: 100}
  validates :body, presence: true
  validates :course_id, presence: true
end
