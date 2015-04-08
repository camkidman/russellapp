class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :entity_name
      t.string :ein
      t.date :date_established
      t.integer :percent_of_ownership
      t.string :phone
      t.string :email
      t.date :birthdate
      t.string :address
      t.string :address_2
      t.string :state
      t.string :zip
      t.string :city
      t.integer :time_at_current_residence_years
      t.integer :time_at_current_residence_months
      t.string :drivers_license_number
      t.date :drivers_license_expiration
      t.string :drivers_license_state
      t.string :ssn
      t.string :bank_account_number
      t.string :bank_routing_number

      t.timestamps
    end
  end
end
