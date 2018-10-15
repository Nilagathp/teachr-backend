class StudentSerializer < ActiveModel::Serializer
  attributes :name, :id, :grade, :sections, :courses, :assignments, :student_assignments
  has_many :student_sections
end
