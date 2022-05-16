class CreateAttachments < ActiveRecord::Migration[7.0]
  def change
    create_table :attachments, id: :uuid, default: 'gen_random_uuid()', force: true do |t|
      t.string :media
      t.string :attachable_type
      t.uuid :attachable_id

      t.timestamps
    end
    add_index :attachments, :attachable_id
  end
end
