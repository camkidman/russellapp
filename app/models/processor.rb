class Processor < ActiveRecord::Base
  belongs_to :offer
  belongs_to :user

  def approved
    read_attribute(:approved) ? 'Yes' : 'No'
  end
end
