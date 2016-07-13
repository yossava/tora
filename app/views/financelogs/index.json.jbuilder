json.array!(@financelogs) do |financelog|
  json.extract! financelog, :id, :user_id, :toko_id, :jumlah, :produk_id
  json.url financelog_url(financelog, format: :json)
end
