class SectionSerializer < ActiveModel::Serializer
  attributes :id, :period, :course
  has_many :student_sections
  has_many :students, through: :student_sections
  has_many :sections, through: :student_sections
end
