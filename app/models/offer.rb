class Offer < ActiveRecord::Base
  PROCESSORS = %w(Cardworks_Merrick Choice_Merrick DPS_Merchant eMerchant_Broker EMS_Merchant EMS_Harris EMS_Merrick Global_Merrick Humbolt_Harris LL_MERCHANT Merchant_eSolutions Meritus_Woodforest National_merchant_association_harris_bank NMC PaymentWorld_Esquire PaymentWorld_Merrick PowerPay Vantage_Humbolt VPS_Merchant Chesapeake_Merrick Gma_Harris Diet_Checklist Nma_Bmo_Mpa Paymitco_Merchant_Account_Ach_Icl Nma_Negative_Option)
  belongs_to :user
  has_many :processors
  after_create :create_processors

  private

  def create_processors
    PROCESSORS.each {|s| Processor.create(name: s, offer_id: id)}
  end

  def associate_new_processors
    o = Offer.all
    o.each do |offer|
      Offer::PROCESSORS.each do |name|
          unless offer.processors.map(&:name).include?(name)
             offer.processors.create(name: name)
          end
        end
      end
  end

end
