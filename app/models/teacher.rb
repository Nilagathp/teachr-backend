class Teacher < ApplicationRecord
  has_one :user, as: :person
  has_many :courses
  has_many :assignments, through: :courses
  has_many :sections, through: :courses
end
