class AddDateOfHireToProvider < ActiveRecord::Migration[5.2]
  def change
    add_column :providers, :Date_Of_Hire, :date
  end
end
