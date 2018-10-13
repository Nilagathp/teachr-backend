class TeacherSerializer < ActiveModel::Serializer
  attributes :name, :id, :courses, :assignments
  has_many :courses
  has_many :assignments, through: :courses
end
