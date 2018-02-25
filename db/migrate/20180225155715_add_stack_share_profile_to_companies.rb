class AddStackShareProfileToCompanies < ActiveRecord::Migration[5.1]
  def change
    add_column :companies, :stackshareprofile, :string
  end
end
