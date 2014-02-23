json.array!(@rfqs) do |rfq|
  json.extract! rfq, :commodity, :brand, :pack_size, :volume, :shipment
  json.url rfq_url(rfq, format: :json)
end