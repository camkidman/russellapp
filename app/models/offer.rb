class Offer < ActiveRecord::Base
  PROCESSORS = %w(AVPS DPS EMB EMS GMA International Vantage/Humbolt Meritus NMC PayMitco Pivitol PowerPay PX/Esquire SelectBankCard TrustOne/DuetcheBanks USMerchant WoodForest NMA MES)
  belongs_to :user
  has_many :processors
  after_create :create_processors

  private

  def create_processors
    PROCESSORS.each {|s| Processor.create(name: s, offer_id: id)}
  end

end
