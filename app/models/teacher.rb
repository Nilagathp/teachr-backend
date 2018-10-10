class Teacher < ApplicationRecord
  has_one :user, as: :person
end
