json.extract! product, :id, :name, :valor_usd, :valor_cop, :impuesto, :seguro, :flete, :aduana, :total_envio_usd, :total_envio_cop, :action, :bought, :valor_maximo_cop, :peso, :total_cost, :exchange_rate, :created_at, :updated_at
json.url product_url(product, format: :json)
