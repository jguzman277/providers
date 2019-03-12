class CreateOffices < ActiveRecord::Migration[5.2]
  def change
    create_table :offices do |t|
      t.text :Office

      t.timestamps
    end
  end
end
