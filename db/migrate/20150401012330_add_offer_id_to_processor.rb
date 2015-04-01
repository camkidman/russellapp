class AddOfferIdToProcessor < ActiveRecord::Migration
  def change
    add_reference :processors, :offer, index: true
  end
end
