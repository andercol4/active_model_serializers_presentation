class Api::V1::AuthorSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :age

  has_many :books
end
