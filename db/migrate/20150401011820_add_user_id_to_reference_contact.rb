class AddUserIdToReferenceContact < ActiveRecord::Migration
  def change
    add_reference :reference_contacts, :user, index: true
  end
end
