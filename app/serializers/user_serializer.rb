class UserSerializer < ActiveModel::Serializer
  attributes :email, :id, :role, :person
end
