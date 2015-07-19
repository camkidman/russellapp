class PdfGeneratorController < ApplicationController
  def meritus_woodforest
    processor = Processor.find(params[:processor_id])

    respond_to do |format|
      format.html { send_file MeritusWoodforest.new(processor).export, type: 'application/pdf' }
      format.pdf { send_file MeritusWoodforest.new(processor).export, type: 'application/pdf' }
    end

  end

  def cardworks_merrick
    processor = Processor.find(params[:processor_id])

    respond_to do |format|
      format.html { send_file CardworksMerrick.new(processor).export, type: 'application/pdf' }
      format.pdf { send_file CardworksMerrick.new(processor).export, type: 'application/pdf' }
    end

  end

  def choice_merrick
    processor = Processor.find(params[:processor_id])

    respond_to do |format|
      format.html { send_file ChoiceMerrick.new(processor).export, type: 'application/pdf' }
      format.pdf { send_file ChoiceMerrick.new(processor).export, type: 'application/pdf' }
    end

  end

  def dps_merchant
    processor = Processor.find(params[:processor_id])

    respond_to do |format|
      format.html { send_file DpsMerchant.new(processor).export, type: 'application/pdf' }
      format.pdf { send_file DpsMerchant.new(processor).export, type: 'application/pdf' }
    end

  end

  def emerchant_broker
    processor = Processor.find(params[:processor_id])

    respond_to do |format|
      format.html { send_file EmerchantBroker.new(processor).export, type: 'application/pdf' }
      format.pdf { send_file EmerchantBroker.new(processor).export, type: 'application/pdf' }
    end

  end

  def ems_harris
    processor = Processor.find(params[:processor_id])

    respond_to do |format|
      format.html { send_file EmsHarris.new(processor).export, type: 'application/pdf' }
      format.pdf { send_file EmsHarris.new(processor).export, type: 'application/pdf' }
    end

  end

  def ems_merchant
    processor = Processor.find(params[:processor_id])

    respond_to do |format|
      format.html { send_file EmsMerchant.new(processor).export, type: 'application/pdf' }
      format.pdf { send_file EmsMerchant.new(processor).export, type: 'application/pdf' }
    end

  end

  def ems_merrick
    processor = Processor.find(params[:processor_id])

    respond_to do |format|
      format.html { send_file EmsMerrick.new(processor).export, type: 'application/pdf' }
      format.pdf { send_file EmsMerrick.new(processor).export, type: 'application/pdf' }
    end

  end

  def global_merrick
    processor = Processor.find(params[:processor_id])

    respond_to do |format|
      format.html { send_file GlobalMerrick.new(processor).export, type: 'application/pdf' }
      format.pdf { send_file GlobalMerrick.new(processor).export, type: 'application/pdf' }
    end

  end

  def humbolt_harris
    processor = Processor.find(params[:processor_id])

    respond_to do |format|
      format.html { send_file HumboltHarris.new(processor).export, type: 'application/pdf' }
      format.pdf { send_file HumboltHarris.new(processor).export, type: 'application/pdf' }
    end

  end

  def national_merchant_association_harris_bank
    processor = Processor.find(params[:processor_id])

    respond_to do |format|
      format.html { send_file NationalMerchantAssociationHarrisBank.new(processor).export, type: 'application/pdf' }
      format.pdf { send_file NationalMerchantAssociationHarrisBank.new(processor).export, type: 'application/pdf' }
    end

  end

  def nmc
    processor = Processor.find(params[:processor_id])

    respond_to do |format|
      format.html { send_file Nmc.new(processor).export, type: 'application/pdf' }
      format.pdf { send_file Nmc.new(processor).export, type: 'application/pdf' }
    end

  end

  def paymentworld_esquire
    processor = Processor.find(params[:processor_id])

    respond_to do |format|
      format.html { send_file PaymentworldEsquire.new(processor).export, type: 'application/pdf' }
      format.pdf { send_file PaymentworldEsquire.new(processor).export, type: 'application/pdf' }
    end

  end

  def paymentworld_merrick
    processor = Processor.find(params[:processor_id])

    respond_to do |format|
      format.html { send_file PaymentworldMerrick.new(processor).export, type: 'application/pdf' }
      format.pdf { send_file PaymentworldMerrick.new(processor).export, type: 'application/pdf' }
    end

  end

  def powerpay
    processor = Processor.find(params[:processor_id])

    respond_to do |format|
      format.html { send_file Powerpay.new(processor).export, type: 'application/pdf' }
      format.pdf { send_file Powerpay.new(processor).export, type: 'application/pdf' }
    end

  end

  def vantage_humbolt
    processor = Processor.find(params[:processor_id])

    respond_to do |format|
      format.html { send_file VantageHumbolt.new(processor).export, type: 'application/pdf' }
      format.pdf { send_file VantageHumbolt.new(processor).export, type: 'application/pdf' }
    end

  end

  def vps_merchant
    processor = Processor.find(params[:processor_id])

    respond_to do |format|
      format.html { send_file VpsMerchant.new(processor).export, type: 'application/pdf' }
      format.pdf { send_file VpsMerchant.new(processor).export, type: 'application/pdf' }
    end

  end

  def chesapeake_merrick
    processor = Processor.find(params[:processor_id])

    respond_to do |format|
      format.html { send_file ChesapeakeMerrick.new(processor).export, type: 'application/pdf' }
      format.pdf { send_file ChesapeakeMerrick.new(processor).export, type: 'application/pdf' }
    end

  end

  def diet_checklist
    processor = Processor.find(params[:processor_id])

    respond_to do |format|
      format.html { send_file DietChecklist.new(processor).export, type: 'application/pdf' }
      format.pdf { send_file DietChecklist.new(processor).export, type: 'application/pdf' }
    end

  end

  def gma_harris
    processor = Processor.find(params[:processor_id])

    respond_to do |format|
      format.html { send_file GmaHarris.new(processor).export, type: 'application/pdf' }
      format.pdf { send_file GmaHarris.new(processor).export, type: 'application/pdf' }
    end

  end

end