class Teacher < ApplicationRecord
  has_one :user, as: :person
  has_many :courses
end
