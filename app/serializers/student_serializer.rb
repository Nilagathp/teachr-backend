class StudentSerializer < ActiveModel::Serializer
  attributes :name, :id, :grade, :assignments, :student_assignments, :courses
end
