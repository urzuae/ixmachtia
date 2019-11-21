class CreateContents < ActiveRecord::Migration[5.2]
  def change
    create_table :contents do |t|
      t.string :title
      t.integer :order, limit: 2
      t.references :chapter, foreign_key: true
      t.references :content_type, foreign_key: true

      t.timestamps
    end
  end
end
