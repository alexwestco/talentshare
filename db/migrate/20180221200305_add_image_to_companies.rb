class AddImageToCompanies < ActiveRecord::Migration[5.1]
  def self.up
    add_attachment :companies, :image
  end

  def self.down
    remove_attachment :companies, :image
  end
end
