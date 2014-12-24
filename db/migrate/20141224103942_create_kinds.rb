class CreateKinds < ActiveRecord::Migration
  def change
    create_table :kinds do |t|
      t.string :name
      t.string :cote

      t.timestamps
    end
  end
end
