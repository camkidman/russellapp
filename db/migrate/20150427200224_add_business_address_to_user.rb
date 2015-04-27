class AddBusinessAddressToUser < ActiveRecord::Migration
  def change
    add_column :users, :business_address, :string
  end
end
