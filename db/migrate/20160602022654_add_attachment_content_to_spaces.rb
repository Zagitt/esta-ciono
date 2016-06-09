class AddAttachmentContentToSpaces < ActiveRecord::Migration
  def self.up
    change_table :spaces do |t|
      t.attachment :content
    end
  end

  def self.down
    remove_attachment :spaces, :content
  end
end
