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

        'DBA Name'.to_sym => @processor.offer.name,
        'Legal Address'.to_sym => @processor.offer.user.address,
        'DBA Address No PO Box'.to_sym => @processor.offer.user.address,
        'DBA City State Zip'.to_sym => @processor.offer.user.city + ", " + @processor.offer.user.state + ", " + @processor.offer.user.zip,
        'Legal City State Zip'.to_sym => @processor.offer.user.city + ", " + @processor.offer.user.state + ", " + @processor.offer.user.zip,
        'Legal Phone  Contact'.to_sym => @processor.offer.user.phone,
        'DBA Phone  nonmobile is preferred'.to_sym => @processor.offer.customer_support_phone,
        'Cust Svc  if different'.to_sym => @processor.offer.customer_support_phone,
        'Website Address'.to_sym => @processor.offer.website,
        :Fax => @processor.offer.fax_number,
        'Email Address'.to_sym => @processor.offer.customer_support_email,
        'Federal Tax  9 digits no dashes'.to_sym => @processor.offer.user.ssn,
        'Bank Name'.to_sym => Rails.application.config.bank_name,
        :Routing => Rails.application.config.routing_number,
        'Bank Phone  10 digits no dashes'.to_sym => Rails.application.config.bank_contact_phone,
        :Name => @processor.offer.user.name,
        :Title => @processor.offer.user.title,
        'Residence Address'.to_sym => @processor.offer.user.address,
        :City => @processor.offer.user.city,
        :State => @processor.offer.user.state,
        :Zip => @processor.offer.user.zip,
        'Date of Birth'.to_sym => @processor.offer.user.birthdate,
        'Social Security'.to_sym => @processor.offer.user.ssn,
        'Equity Ownership'.to_sym => @processor.offer.user.percent_of_ownership,
        'Home Phone'.to_sym => @processor.offer.user.phone,
        'Drivers Lic'.to_sym => @processor.offer.user.drivers_license_number,
        :ST => @processor.offer.user.drivers_license_state,
        :yrs => @processor.offer.user.time_at_current_residence_years
    }

    form_fields_and_values.each do |k, v|
      fill k, v
    end
  end
end