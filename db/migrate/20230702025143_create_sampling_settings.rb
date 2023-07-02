class CreateSamplingSettings < ActiveRecord::Migration[6.0]
  def change
    create_table :sampling_settings do |t|
      t.bigint :general_setting_id
      t.bigint :method_id
      t.bigint :step
      t.integer :height
      t.integer :width
      t.integer :batch_count
      t.integer :batch_size
      t.text :cfg_scale
      t.bigint :seed
      t.bigint :script_id
      t.boolean :face_recover_flg
      t.boolean :generate_tiling_flg
      t.bigint :high_quality_setting_id

      t.timestamps
    end
  end
end
