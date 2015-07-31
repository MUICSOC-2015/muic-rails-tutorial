class AddImageAttachmentToImage < ActiveRecord::Migration
  def change
    add_column :images, :description, :text
    add_attachment :images, :attachment
  end
end
