class DropTableTrialBalance < ActiveRecord::Migration
  def change
  	drop_table :trial_balances
  end
end
