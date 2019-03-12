class DropModels < ActiveRecord::Migration[5.2]
  def down
    drop_table :models
  end
end
