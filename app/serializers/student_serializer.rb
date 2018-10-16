class StudentSerializer < ActiveModel::Serializer
  attributes :name, :id, :grade, :sections, :assignments, :student_assignments, :courses
  # has_many :sections, through: :student_sections
end
