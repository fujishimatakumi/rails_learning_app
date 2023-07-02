class CreateLycoris < ActiveRecord::Migration[6.0]
  def change
    create_table :lycoris do |t|
      t.bigint :general_setting_id
      t.text :name
      t.text :discription
      t.text :download_url
      t.bigint :extention_category_id
      t.bigint :extention_tag_id

      t.timestamps
    end
  end
end
