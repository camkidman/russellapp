class Offer < ActiveRecord::Base
  PROCESSORS = %w(Cardworks_Merrick Choice_Merrick DPS_Merchant eMerchant_Broker EMS_Merchant EMS_Harris EMS_Merrick Global_Merrick Humbolt_Harris LL_MERCHANT Merchant_eSolutions Meritus_Woodforest National_merchant_association_harris_bank NMC PaymentWorld_Esquire PaymentWorld_Merrick PowerPay Vantage_Humbolt VPS_Merchant)
  belongs_to :user
  has_many :processors
  after_create :create_processors

  private

  def create_processors
    PROCESSORS.each {|s| Processor.create(name: s, offer_id: id)}
  end

end
