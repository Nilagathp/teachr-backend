class StudentSerializer < ActiveModel::Serializer
  attributes :name, :id, :grade, :sections, :courses
  has_many :student_sections
end
