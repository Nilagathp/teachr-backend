class AssignmentSerializer < ActiveModel::Serializer
  attributes :id, :name, :category, :points, :course
  belongs_to :course
end
