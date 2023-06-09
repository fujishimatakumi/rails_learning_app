class CreateLoraTagRelations < ActiveRecord::Migration[6.0]
  def change
    create_table :lora_tag_relations do |t|
      t.references :lora, null: false, foreign_key: true
      t.references :tag, null: false, foreign_key: true

      t.timestamps
    end
  end
end
