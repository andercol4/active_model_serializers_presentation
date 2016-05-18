
class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :publication_date, :author, :study

  def author
    # binding.pry
    AuthorShortSerializer.new(Author.find(object[:author_id]))
  end

  def study
    StudyShortSerializer.new(Study.find(object[:study_id]))
  end

end
