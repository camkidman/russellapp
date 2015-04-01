json.array!(@users) do |user|
  json.extract! user, :id, :entity_name, :ein, :date_established, :percent_of_ownership, :phone, :email, :birthdate, :address, :address_2, :state, :zip, :city, :time_at_current_residence_years, :time_at_current_residence_months, :drivers_license_number, :drivers_licence_expiration, :drivers_license_state, :ssn, :bank_account_number, :bank_routing_number
  json.url user_url(user, format: :json)
end
