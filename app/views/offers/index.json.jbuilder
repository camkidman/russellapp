json.array!(@offers) do |offer|
  json.extract! offer, :id, :name, :website, :whos_offer, :fulfillment, :trial, :customer_support_phone, :customer_support_email, :fax_number, :hours_of_operation, :description
  json.url offer_url(offer, format: :json)
end
