json.extract! fact, :id, :title, :body, :source, :created_at, :updated_at
json.url fact_url(fact, format: :json)
