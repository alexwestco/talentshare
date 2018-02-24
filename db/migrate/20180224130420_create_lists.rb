class CreateLists < ActiveRecord::Migration[5.1]
  def change
    create_table :lists do |t|
      t.string :position
      t.string :location
      t.integer :company
      t.string :date

      t.timestamps
    end
  end
end
