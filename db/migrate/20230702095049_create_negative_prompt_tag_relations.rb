class CreateNegativePromptTagRelations < ActiveRecord::Migration[6.0]
  def change
    create_table :negative_prompt_tag_relations do |t|
      t.references :negative_prompt, null: false, foreign_key: true
      t.references :tag, null: false, foreign_key: true

      t.timestamps
    end
  end
end
