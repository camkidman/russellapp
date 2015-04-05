class PdfGeneratorController < ApplicationController
  def meritus
    processor = Processor.find(params[:processor_id])

    respond_to do |format|
      format.pdf { send_file MeritusForm.new(processor).export, type: 'application/pdf' }
    end

  end

  def cardworks_merrick
    processor = Processor.find(params[:processor_id])

    respond_to do |format|
      format.pdf { send_file CardworksMerrick.new(processor).export, type: 'application/pdf' }
    end

  end



end