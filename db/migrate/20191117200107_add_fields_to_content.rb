class AddFieldsToContent < ActiveRecord::Migration[5.2]
  def change
    add_column :contents, :url, :string
    add_column :contents, :file, :string
    add_column :contents, :text, :text
  end
end
