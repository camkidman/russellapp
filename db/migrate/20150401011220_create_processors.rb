class CreateProcessors < ActiveRecord::Migration
  def change
    create_table :processors do |t|
      t.string :name
      t.date :date_submitted
      t.boolean :approved
      t.date :date_approved
      t.string :current_rates
      t.string :bank_1
      t.string :bank_2
      t.string :monthly_amount

      t.timestamps
    end
  end
end
