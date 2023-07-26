json.extract! register_product, :id, :titulo, :descricao, :valor, :created_at, :updated_at
json.url register_product_url(register_product, format: :json)
