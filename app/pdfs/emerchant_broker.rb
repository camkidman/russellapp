class EmerchantBroker < FillablePdfForm

  def initialize(processor)
    @processor = processor
    super()
  end

  protected

  def fill_out
    form_fields_and_values = {
        'Legal Name of Business'.to_sym => @processor.offer.legal_name,
        'DBA Doing Business As'.to_sym => @processor.offer.name,
        'Street Address Physical Address No PO Boxes'.to_sym => @processor.offer.user.address,
        :City => @processor.offer.user.city,
        :State => @processor.offer.user.state,
        :Zip => @processor.offer.user.zip,
        :Country => "United States",
        'Business Telephone'.to_sym => @processor.offer.customer_support_phone,
        'Business Fax'.to_sym => @processor.offer.fax_number,
        'Customer Service Telephone'.to_sym => @processor.offer.customer_support_phone,
        'Merchant EMail'.to_sym => @processor.offer.user.email,
        'Merchant URL Website'.to_sym => @processor.offer.website,
        'Customer Support Email'.to_sym => @processor.offer.customer_support_email,
        'Principals Name'.to_sym => @processor.offer.user.name,
        :Ownership => @processor.offer.user.percent_of_ownership,
        :Title => @processor.offer.user.title,
        'Home Telephone'.to_sym => @processor.offer.user.phone,
        'Date of Birth mmddyyyy Required'.to_sym => @processor.offer.user.birthdate,
        'Social Security  Required'.to_sym => @processor.offer.user.ssn,
        'Drivers License No and State Issued if no DL Passport Required'.to_sym => @processor.offer.user.drivers_license_number + ", " + @processor.offer.user.drivers_license_state,
        'Expiration Date Required'.to_sym => @processor.offer.user.drivers_license_expiration,
        'Street Address Physical address  No PO Boxes'.to_sym => @processor.offer.user.address,
        :City_3 => @processor.offer.user.city,
        :State_3 => @processor.offer.user.state,
        :Zip_3 => @processor.offer.user.zip,
        'Country Code Required'.to_sym => "US",
        'Bank Name'.to_sym => Rails.application.config.bank_name,
        'Routing Number'.to_sym => Rails.application.config.routing_number,
        'Telephone'.to_sym => Rails.application.config.bank_contact_phone,
        'Business Name'.to_sym => Rails.application.config.trade_reference,
        :Contact => Rails.application.config.trade_reference_contact_name,
        :Phone => Rails.application.config.trade_reference_contact_phone,
        'Print Name'.to_sym => @processor.offer.user.name
    }

    form_fields_and_values.each do |k, v|
      fill k, v
    end
  end
end