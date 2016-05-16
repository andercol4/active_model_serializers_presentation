class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :author, :library

  belongs_to :author
  belongs_to :library
end
