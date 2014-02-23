json.array!(@purchases) do |purchase|
  json.extract! purchase, :quote_id, :commodity, :supplier, :price, :brand, :pack_size, :volume, :shipment_details, :po_number
  json.url purchase_url(purchase, format: :json)
end