class AddProfileToSpaces < ActiveRecord::Migration
  def change
    add_reference :spaces, :profile, index: true, foreign_key: true
  end
end
