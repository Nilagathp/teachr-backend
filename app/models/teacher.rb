class Teacher < ApplicationRecord
  has_one :user, as: :person
  has_many :courses
  has_many :assignments, through: :courses
  has_many :student_courses, through: :courses
  has_many :students, through: :student_courses
  has_many :student_assignments, through: :students
end
