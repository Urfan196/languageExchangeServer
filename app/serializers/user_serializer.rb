class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :birthday, :username
  has_many :fluencies
  has_many :languages, through: :fluencies
  has_many :availabilities
end
