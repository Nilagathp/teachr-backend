class TeacherSerializer < ActiveModel::Serializer
  attributes :name, :id, :courses
  has_many :courses, serializer: CourseSerializer
end
