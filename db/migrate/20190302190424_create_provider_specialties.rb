class CreateProviderSpecialties < ActiveRecord::Migration[5.2]
  def change
    create_table :provider_specialties do |t|
      t.string :provider_specialty
      t.boolean :active

      t.timestamps
    end
  end
end
