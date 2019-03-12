class AddActiveToOffice < ActiveRecord::Migration[5.2]
  def change
    add_column :offices, :Active, :boolean, :default => true
  end
end
