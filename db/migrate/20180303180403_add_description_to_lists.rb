class AddDescriptionToLists < ActiveRecord::Migration[5.1]
  def change
    add_column :lists, :description, :text
  end
end
