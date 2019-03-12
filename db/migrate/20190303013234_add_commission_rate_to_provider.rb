class AddCommissionRateToProvider < ActiveRecord::Migration[5.2]
  def change
    add_column :providers, :Commission_Rate, :number
  end
end
