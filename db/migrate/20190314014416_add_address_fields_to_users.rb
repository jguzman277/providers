class AddAddressFieldsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :address, :string
    add_column :users, :city, :string
    add_column :users, :zip_code, :string
  end
end
