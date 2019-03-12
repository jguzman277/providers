class ChangeOfficeToStringInOffices < ActiveRecord::Migration[5.2]
  def change
    change_column :Offices, :Office, :string
  end
end
