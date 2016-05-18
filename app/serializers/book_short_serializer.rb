class BookShortSerializer < ActiveModel::Serializer
  attributes :title, :id#, :age_at_publication

  def age_at_publication
    a = Author.find(object[:author_id])
    dif = Time.now.year - object.publication_date
    aap = a.age - dif
  end
end
