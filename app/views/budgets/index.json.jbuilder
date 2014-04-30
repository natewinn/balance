json.array!(@budgets) do |budget|
  json.extract! budget, :id, :category_id, :value, :start_date, :end_date, :account_id
  json.url budget_url(budget, format: :json)
end
