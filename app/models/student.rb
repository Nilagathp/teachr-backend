class Student < ApplicationRecord
  has_one :user, as: :person
  has_many :student_sections
  has_many :sections, through: :student_sections
  has_many :courses, through: :sections
  has_many :assignments, through: :courses
  # has_many :teachers, as: :person, through: :courses
  has_many :student_assignments
end
