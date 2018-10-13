class CourseSerializer < ActiveModel::Serializer
  attributes :id, :name, :assignments
  belongs_to :teacher
  has_many :assignments
end
