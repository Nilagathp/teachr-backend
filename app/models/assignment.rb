class Assignment < ApplicationRecord
  enum category: [:CW, :HW, :TQP]
  belongs_to :course
  has_many :student_assignments, dependent: :destroy
end
