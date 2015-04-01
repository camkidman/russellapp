json.array!(@reference_contacts) do |reference_contact|
  json.extract! reference_contact, :id, :name, :known_from, :phone
  json.url reference_contact_url(reference_contact, format: :json)
end
