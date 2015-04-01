class CreateReferenceContacts < ActiveRecord::Migration
  def change
    create_table :reference_contacts do |t|
      t.string :name
      t.string :known_from
      t.string :phone

      t.timestamps
    end
  end
end
