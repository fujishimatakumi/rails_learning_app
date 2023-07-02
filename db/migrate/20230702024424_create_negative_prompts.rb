class CreateNegativePrompts < ActiveRecord::Migration[6.0]
  def change
    create_table :negative_prompts do |t|
      t.bigint :general_setting_id
      t.text :text
      t.text :translation_text
      t.bigint :prompt_category_id
      t.bigint :prompt_tag_id

      t.timestamps
    end
  end
end
