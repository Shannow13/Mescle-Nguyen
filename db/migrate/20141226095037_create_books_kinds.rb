class CreateBooksKinds < ActiveRecord::Migration
  def change
    create_table :books_kinds do |t|
      t.belongs_to :book, index: true
      t.belongs_to :kind, index: true

      t.timestamps
    end
  end
end
