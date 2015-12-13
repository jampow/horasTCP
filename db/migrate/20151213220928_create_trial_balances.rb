class CreateTrialBalances < ActiveRecord::Migration
  def change
    create_table :trial_balances do |t|
      t.integer :year
      t.integer :month
      t.float :worked_hours
      t.float :hour_price
      t.float :total

      t.timestamps null: false
    end
  end
end
