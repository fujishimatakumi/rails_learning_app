class CreateGeneralSetteingCategoryRelations < ActiveRecord::Migration[6.0]
  def change
    create_table :general_setteing_category_relations do |t|
      t.references :general_setting, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
