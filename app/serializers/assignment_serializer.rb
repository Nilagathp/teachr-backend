class AssignmentSerializer < ActiveModel::Serializer
  attributes :id, :name, :category, :points, :course_id
  belongs_to :course
  belongs_to :teacher
end
