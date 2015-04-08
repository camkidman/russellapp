class PdfGeneratorController < ApplicationController
  def meritus
    processor = Processor.find(params[:processor_id])

    respond_to do |format|
      format.html { send_file MeritusForm.new(processor).export, type: 'application/pdf' }
      format.pdf { send_file MeritusForm.new(processor).export, type: 'application/pdf' }
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

end