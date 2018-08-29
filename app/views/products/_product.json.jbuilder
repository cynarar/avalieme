json.extract! product, :id, :name, :slug, :description, :brand_id, :category_id, :picture, :model, :created_at, :updated_at
json.url product_url(product, format: :json)