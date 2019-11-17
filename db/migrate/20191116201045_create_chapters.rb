class CreateChapters < ActiveRecord::Migration[5.2]
  def change
    create_table :chapters do |t|
      t.string :title
      t.text :description
      t.integer :order, limit: 2
      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end
