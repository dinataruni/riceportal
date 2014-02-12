json.array!(@quotes) do |quote|
  json.extract! quote, :price, :commodity, :supplier, :brand, :notes
  json.url quote_url(quote, format: :json)
end