class AddBusinessAddressDetailsToUser < ActiveRecord::Migration
  def change
    add_column :users, :business_address_2, :string
    add_column :users, :business_city, :string
    add_column :users, :business_state, :string
    add_column :users, :business_zip, :string
  end
end
