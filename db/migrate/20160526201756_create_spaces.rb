class CreateSpaces < ActiveRecord::Migration
  def change
    create_table :spaces do |t|
      t.text :description
      t.string :address
      t.references :district, index: true, foreign_key: true
      t.float :price

      t.timestamps null: false
    end
  end
end
