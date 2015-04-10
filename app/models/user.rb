class User < ActiveRecord::Base
  has_many :offers
  has_many :reference_contacts
  has_many :processors, through: :offers

  def name
    first_name + " " + last_name
  end
  
  def full_address
    address + ", " + city + ", " + state + ", " + zip
  end

  def city_state_zip
    city + ", " + state + ", " + zip
  end
end
