class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.references :space, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.date :reservation_date

      t.timestamps null: false
    end
  end
end
