class AddAttachmentFileToParsers < ActiveRecord::Migration
  def self.up
    change_table :parsers do |t|
      t.attachment :file
    end
  end

  def self.down
    remove_attachment :parsers, :file
  end
end
