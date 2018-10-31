class Assignment < ApplicationRecord
  enum category: [:Classwork, :Homework, :Assessment]
  belongs_to :course
  has_many :student_assignments, dependent: :destroy
end
