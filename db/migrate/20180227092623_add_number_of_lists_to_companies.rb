class AddNumberOfListsToCompanies < ActiveRecord::Migration[5.1]
  def change
    add_column :companies, :number_of_lists, :integer
  end
end
