class User < ActiveRecord::Base
  has_many :offers
  has_many :reference_contacts
  has_many :processors, through: :offers

end
