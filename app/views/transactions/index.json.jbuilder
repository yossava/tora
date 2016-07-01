json.array!(@transactions) do |transaction|
  json.extract! transaction, :id, :get, :post
  json.url transaction_url(transaction, format: :json)
end
