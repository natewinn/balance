json.array!(@users) do |user|
  json.extract! user, :id, :email, :password, :email_verified, :subscription, :currency, :account_id
  json.url user_url(user, format: :json)
end
