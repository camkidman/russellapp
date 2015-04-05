class AddLegalNameToOffer < ActiveRecord::Migration
  def change
    add_column :offers, :legal_name, :string
  end
end
