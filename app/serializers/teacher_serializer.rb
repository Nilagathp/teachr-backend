class TeacherSerializer < ActiveModel::Serializer
  attributes :name, :id, :courses, :assignments, :students
end
