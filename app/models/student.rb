class Student < ApplicationRecord
  has_one :user, as: :person
end
