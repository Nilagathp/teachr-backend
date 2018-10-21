class Student < ApplicationRecord
  has_one :user, as: :person
  has_many :student_courses
  has_many :courses, through: :student_courses
  has_many :assignments, through: :courses
  has_many :student_assignments
end
