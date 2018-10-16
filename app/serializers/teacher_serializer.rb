class TeacherSerializer < ActiveModel::Serializer
  attributes :name, :id, :courses, :assignments, :sections
  # has_many :courses
  # has_many :assignments, through: :courses
  # has_many :sections, through: :courses
  # has_many :students, as: :person, through: :sections
  # has_many :student_assignments, through: :students
end
