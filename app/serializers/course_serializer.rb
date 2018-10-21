class CourseSerializer < ActiveModel::Serializer
  attributes :id, :name, :assignments, :students
  belongs_to :teacher
  has_many :assignments
  has_many :student_courses
  has_many :students, through: :student_courses
end
