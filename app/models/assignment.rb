class Assignment < ApplicationRecord
  enum category: [:CW, :HW, :TQP]
  belongs_to :course
end
