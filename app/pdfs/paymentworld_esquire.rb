class PaymentworldEsquire < FillablePdfForm

  def initialize(processor)
    @processor = processor
    super()
  end

  protected

  def fill_out
    form_fields_and_values = {
        'topmostSubform[0].Page1[0].PRINT_CLIENTS_BUSINESS_LEGAL_NAME[0]'.to_sym => @processor.offer.legal_name,
        'topmostSubform[0].Page1[0].TITLE[0]'.to_sym => @processor.offer.user.title,
        'topmostSubform[0].Page1[0].PRINT_NAME[0]'.to_sym => @processor.offer.user.name,
        

        :BusinessLegalName => @processor.offer.legal_name,
        :BusinessDBAName => @processor.offer.name,
        :BusinessAddress => @processor.offer.user.address,
        :BusinessCity => @processor.offer.user.city,
        :BusinessState => @processor.offer.user.state,
        :BusinessZip => @processor.offer.user.zip,
        :BusinessMailingAddress => @processor.offer.user.address,
        :BusinessMailingCity => @processor.offer.user.city,
        :BusinessMailingState => @processor.offer.user.state,
        :BusinessMailingZip => @processor.offer.user.zip,
        :BusinessPhone => @processor.offer.customer_support_phone,
        :BusinessDBAPhone => @processor.offer.user.phone,
        :BusinessFax => @processor.offer.fax_number,
        :BusinessContact => @processor.offer.user.name,
        :BusinessContactTitle => @processor.offer.user.title,
        :BusinessWebsite => @processor.offer.website,
        :BusinessEmailAddress => @processor.offer.customer_support_email,
        :OwnerFullName0a => @processor.offer.user.name,
        :OwnerTitle0a => @processor.offer.user.title,
        :OwnerPercentage0 => @processor.offer.user.percent_of_ownership,
        :OwnerDOB0 => @processor.offer.user.birthdate,
        :OwnerAddress0 => @processor.offer.user.address,
        :OwnerCity0 => @processor.offer.user.city,
        :OwnerState0 => @processor.offer.user.state,
        :OwnerZip0 => @processor.offer.user.zip,
        :OwnerHomePhone0 => @processor.offer.user.phone,
        :OwnerSSN0 => @processor.offer.user.ssn,
        :OwnerDriversLicense0 => @processor.offer.user.drivers_license_number,
        :OwnerDriversLicenseState0 => @processor.offer.user.drivers_license_state,
        :OwnerDriversLicenseExp0 => @processor.offer.user.drivers_license_expiration,
        :BankName => Rails.application.config.bank_name,
        :RoutingNumber => Rails.application.config.routing_number,
    }

    form_fields_and_values.each do |k, v|
      fill k, v
    end
  end
end