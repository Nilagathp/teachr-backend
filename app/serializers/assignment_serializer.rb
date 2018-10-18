class AssignmentSerializer < ActiveModel::Serializer
  attributes :id, :name, :category, :points, :course_id, :directions, :content
  belongs_to :course
end
