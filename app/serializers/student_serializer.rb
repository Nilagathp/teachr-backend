class StudentSerializer < ActiveModel::Serializer
  attributes :name, :id, :grade, :sections, :courses, :assignments
  has_many :student_sections
end
