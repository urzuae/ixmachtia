class CreateContentTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :content_types do |t|
      t.string :name
      t.text :description
      t.string :file_types

      t.timestamps
    end
  end
end
