class AuthorShortSerializer < ActiveModel::Serializer
  attributes :name, :id

  def name
    # binding.pry
    "#{object.last_name}, #{object.first_name}"
  end
end
