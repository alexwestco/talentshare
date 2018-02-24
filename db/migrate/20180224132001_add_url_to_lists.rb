class AddUrlToLists < ActiveRecord::Migration[5.1]
  def change
    add_column :lists, :url, :string
  end
end
