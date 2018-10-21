class TeacherSerializer < ActiveModel::Serializer
  attributes :name, :id, :courses, :assignments
end
