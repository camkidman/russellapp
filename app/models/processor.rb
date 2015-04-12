class Processor < ActiveRecord::Base
  belongs_to :offer
  belongs_to :user

  def approved
    if date_submitted.nil?
      read_attribute(:approved)
    else
      read_attribute(:approved) ? 'Yes' : 'No'
    end
  end
end
