class CreateCheckPointTagRelations < ActiveRecord::Migration[6.0]
  def change
    create_table :check_point_tag_relations do |t|
      t.references :check_point, null: false, foreign_key: true
      t.references :tag, null: false, foreign_key: true

      t.timestamps
    end
  end
end
