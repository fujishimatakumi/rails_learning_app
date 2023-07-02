class CreateExtentionCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :extention_categories do |t|
      t.text :label
      t.text :color

      t.timestamps
    end
  end
end
