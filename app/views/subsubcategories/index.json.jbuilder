json.array!(@subsubcategories) do |subsubcategory|
  json.extract! subsubcategory, :id, :name, :subcategory_id
  json.url subsubcategory_url(subsubcategory, format: :json)
end
