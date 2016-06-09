class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.references :district, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
