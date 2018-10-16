class StudentAssignmentSerializer < ActiveModel::Serializer
  attributes :id, :student_id, :assignment_id, :points_earned, :status
end
