class AddIndexToTrialBalance < ActiveRecord::Migration
  def change
  	add_index :trial_balances, [:year, :month], :unique => true
  end
end
