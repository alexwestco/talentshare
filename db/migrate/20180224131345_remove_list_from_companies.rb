class RemoveListFromCompanies < ActiveRecord::Migration[5.1]
  def change
    remove_column :companies, :list, :integer
  end
end
