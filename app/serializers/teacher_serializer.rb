class TeacherSerializer < ActiveModel::Serializer
  attributes :name, :id, :courses, :assignments, :sections
  has_many :courses
end
