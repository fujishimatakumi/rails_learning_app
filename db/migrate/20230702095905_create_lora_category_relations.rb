class CreateLoraCategoryRelations < ActiveRecord::Migration[6.0]
  def change
    create_table :lora_category_relations do |t|
      t.references :lora, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
