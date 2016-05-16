class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.belongs_to :author, index: true, foreign_key: true
      t.belongs_to :study, index: true, foreign_key: true
      t.boolean :checked_in

      t.timestamps null: false
    end
  end
end
