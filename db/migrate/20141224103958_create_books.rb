class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.string :autor_name
      t.string :editor
      t.string :collection
      t.string :kind
      t.string :cote

      t.timestamps
    end
  end
end
