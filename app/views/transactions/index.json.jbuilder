json.array!(@transactions) do |transaction|
  json.extract! transaction, :id, :payee, :amount, :date, :reconciled, :location, :budget_id, :user_id
  json.url transaction_url(transaction, format: :json)
end
