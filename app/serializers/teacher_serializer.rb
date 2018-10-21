class TeacherSerializer < ActiveModel::Serializer
  attributes :name, :id, :courses, :assignments, :sections
end
