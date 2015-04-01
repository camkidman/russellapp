json.array!(@processors) do |processor|
  json.extract! processor, :id, :name, :date_submitted, :approved, :date_approved, :current_rates, :bank_1, :bank_2, :monthly_amount
  json.url processor_url(processor, format: :json)
end
