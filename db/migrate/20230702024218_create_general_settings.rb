class CreateGeneralSettings < ActiveRecord::Migration[6.0]
  def change
    create_table :general_settings do |t|
      t.bigint :prompt_id
      t.bigint :negative_prompt_id
      t.bigint :sampling_setting_id
      t.bigint :checkpoint_id
      t.bigint :lora_id
      t.bigint :lycoris_id
      t.bigint :category_id
      t.bigint :tag_id
      t.text :discription

      t.timestamps
    end
  end
end
