class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.string :name
      t.string :website
      t.string :whos_offer
      t.string :fulfillment
      t.string :trial
      t.string :customer_support_phone
      t.string :customer_support_email
      t.string :fax_number
      t.string :hours_of_operation
      t.string :description

      t.timestamps
    end
  end
end
