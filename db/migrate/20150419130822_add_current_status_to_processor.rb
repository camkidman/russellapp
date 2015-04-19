class AddCurrentStatusToProcessor < ActiveRecord::Migration
  def change
    add_column :processors, :current_status, :string
  end
end
