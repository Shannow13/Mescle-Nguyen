class CreateAutors < ActiveRecord::Migration
  def change
    create_table :autors do |t|
      t.string :name
      t.string :first_name
      t.string :nationality

      t.timestamps
    end
  end
end
