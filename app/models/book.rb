class Book < ActiveRecord::Base
  belongs_to :author_id
  belongs_to :study_id
end
