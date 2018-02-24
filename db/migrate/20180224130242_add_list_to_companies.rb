class AddListToCompanies < ActiveRecord::Migration[5.1]
  def change
    add_column :companies, :list, :integer
  end
end
