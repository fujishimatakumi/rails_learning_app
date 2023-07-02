class CreateExtentionTags < ActiveRecord::Migration[6.0]
  def change
    create_table :extention_tags do |t|
      t.text :label
      t.text :color

      t.timestamps
    end
  end
end
