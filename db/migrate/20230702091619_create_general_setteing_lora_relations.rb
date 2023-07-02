class CreateGeneralSetteingLoraRelations < ActiveRecord::Migration[6.0]
  def change
    create_table :general_setteing_lora_relations do |t|
      t.references :general_setting, null: false, foreign_key: true
      t.references :lora, null: false, foreign_key: true

      t.timestamps
    end
  end
end
