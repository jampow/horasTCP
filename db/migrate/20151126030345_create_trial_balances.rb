class CreateTrialBalances < ActiveRecord::Migration
  def change
    create_table :trial_balances do |t|
      t.integer :year
      t.integer :month
      t.float :totalHours
      t.float :valueHour
      t.float :valueMonth

      t.timestamps null: false
    end
  end
end
