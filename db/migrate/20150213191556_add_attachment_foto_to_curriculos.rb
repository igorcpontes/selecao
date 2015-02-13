class AddAttachmentFotoToCurriculos < ActiveRecord::Migration
  def self.up
    change_table :curriculos do |t|
      t.attachment :foto
    end
  end

  def self.down
    remove_attachment :curriculos, :foto
  end
end
