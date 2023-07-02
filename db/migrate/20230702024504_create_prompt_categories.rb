class CreatePromptCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :prompt_categories do |t|
      t.text :label
      t.text :color

      t.timestamps
    end
  end
end
