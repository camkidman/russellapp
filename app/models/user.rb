class User < ActiveRecord::Base
  has_many :offers
  has_many :reference_contacts
  has_many :processors, through: :offers

  def name
    first_name + " " + last_name
  end
end
