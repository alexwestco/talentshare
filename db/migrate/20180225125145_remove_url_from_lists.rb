class RemoveUrlFromLists < ActiveRecord::Migration[5.1]
  def change
    remove_column :lists, :url, :string
  end
end
