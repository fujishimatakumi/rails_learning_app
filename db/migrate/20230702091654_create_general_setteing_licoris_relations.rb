class CreateGeneralSetteingLicorisRelations < ActiveRecord::Migration[6.0]
  def change
    create_table :general_setteing_licoris_relations do |t|
      t.references :general_setting, null: false, foreign_key: true
      t.references :lycoris, null: false, foreign_key: true

      t.timestamps
    end
  end
end
