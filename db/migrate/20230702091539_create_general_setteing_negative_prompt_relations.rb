class CreateGeneralSetteingNegativePromptRelations < ActiveRecord::Migration[6.0]
  def change
    create_table :gs_negative_prompt_relations do |t|
      t.references :general_setting, null: false, foreign_key: true
      t.references :negative_prompt, null: false, foreign_key: true

      t.timestamps
    end
  end
end
