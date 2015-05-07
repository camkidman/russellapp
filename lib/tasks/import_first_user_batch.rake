task :upload_users_from_first_batch do
    require 'csv'

  x = File.read("#{Rails.root}/lib/upload_users/first_user_batch.csv")

  csv = CSV.parse(x, headers: true)

  csv.each do |row|
    row["first_name"], row["last_name"] = row["Name"].split(' ')
    row["date_established"] = Date.strptime(row["date_established"], "%m/%d/%y")
    row["birthdate"] = Date.strptime(row["birthdate"], "%m/%d/%Y")
    row["drivers_license_expiration"] = Date.strptime(row["drivers_license_expiration"], "%m/%d/%y")
    row["percent_of_ownership"] = row["percent_of_ownership"].to_i
    User.create!(row.to_hash.except("Name"))
  end
end