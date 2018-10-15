class Teacher < ApplicationRecord
  has_one :user, as: :person
  has_many :courses
  has_many :assignments, through: :courses
  has_many :sections, through: :courses
  has_many :students, through: :sections
  has_many :student_assignments, through: :students
end
