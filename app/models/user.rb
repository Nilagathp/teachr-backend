class User < ApplicationRecord
  has_secure_password
  validates :email, uniqueness: {case_sensitive: false}
  belongs_to :person, :polymorphic => true
end
