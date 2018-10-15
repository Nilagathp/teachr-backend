class Course < ApplicationRecord
  belongs_to :teacher
  has_many :assignments
  has_many :sections
end
