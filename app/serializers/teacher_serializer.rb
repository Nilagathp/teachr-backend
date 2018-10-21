class TeacherSerializer < ActiveModel::Serializer
  attributes :name, :id, :courses, :assignments, :students, :student_assignments
end
