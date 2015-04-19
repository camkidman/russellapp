class AddAdditionalNotesToProcessor < ActiveRecord::Migration
  def change
    add_column :processors, :additional_notes, :string
  end
end
