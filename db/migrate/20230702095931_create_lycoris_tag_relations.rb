class CreateLycorisTagRelations < ActiveRecord::Migration[6.0]
  def change
    create_table :lycoris_tag_relations do |t|
      t.references :lycoris, null: false, foreign_key: true
      t.references :tag, null: false, foreign_key: true

      t.timestamps
    end
  end
end
