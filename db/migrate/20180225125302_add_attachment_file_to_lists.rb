class AddAttachmentFileToLists < ActiveRecord::Migration[5.1]
  def self.up
    change_table :lists do |t|
      t.attachment :file
    end
  end

  def self.down
    remove_attachment :lists, :file
  end
end
