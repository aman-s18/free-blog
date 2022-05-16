class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles, id: :uuid, default: 'gen_random_uuid()', force: true do |t|
      t.string :title
      t.text :description
      t.string :type
      t.references :user, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
