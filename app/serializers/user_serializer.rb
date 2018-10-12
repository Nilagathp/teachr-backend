class UserSerializer < ActiveModel::Serializer
  attributes :email, :id, :role, :person
  has_one :person, polymorphic: true
end
