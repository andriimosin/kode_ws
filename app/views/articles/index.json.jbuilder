json.array!(@articles) do |article|
  json.extract! article, :title, :body, :admins_id, :category_id, :subcategory_id
  json.url article_url(article, format: :json)
end
