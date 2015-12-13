json.array!(@trial_balances) do |trial_balance|
  json.extract! trial_balance, :id, :year, :month, :worked_hours, :hour_price, :total
  json.url trial_balance_url(trial_balance, format: :json)
end
