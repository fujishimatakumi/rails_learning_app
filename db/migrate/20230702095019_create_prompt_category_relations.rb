class CreatePromptCategoryRelations < ActiveRecord::Migration[6.0]
  def change
    create_table :prompt_category_relations do |t|
      t.references :prompt, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
