class AddProviderSpecialtyToProviders < ActiveRecord::Migration[5.2]
  def change
    add_column :providers, :provider_specialty_id, :integer
  end
end
