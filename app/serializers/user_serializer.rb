class UserSerializer < ActiveModel::Serializer
  attributes :email, :id, :role
  has_one :person, polymorphic: true
end
