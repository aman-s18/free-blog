class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.string :full_name
      t.string :nick_name
      t.string :phone
      t.text :bio
      t.string :picture
      t.uuid :user_id
      t.timestamps
    end
    add_index :profiles, :user_id
  end
end
