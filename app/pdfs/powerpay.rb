class Powerpay < FillablePdfForm

  def initialize(processor)
    @processor = processor
    super()
  end

  protected

  def fill_out
    form_fields_and_values = {
        'dba Name'.to_sym => @processor.offer.name,
        'Legal Business Name'.to_sym => @processor.offer.legal_name,
        'location address1'.to_sym => @processor.offer.user.address,
        :CityStateZip1 => @processor.offer.user.city_state_zip,
        'Company Name'.to_sym => @processor.offer.user.phone,
        'Customer Service Phone'.to_sym => @processor.offer.customer_support_phone,
        'Legal Phone'.to_sym => @processor.offer.customer_support_phone,
        'Fax Number'.to_sym => @processor.offer.fax_number,
        :Website => @processor.offer.website,
        :Email => @processor.offer.customer_support_email,
        'Trade Reference'.to_sym => Rails.application.config.trade_reference,
        'Contact Name'.to_sym => Rails.application.config.trade_reference_contact_name,
        :Telephone => Rails.application.config.trade_reference_contact_phone,
        'OWNERS  OFFICERS Name'.to_sym => @processor.offer.user.name,
        'OWNERS  OFFICERS Title'.to_sym => @processor.offer.user.title,
        'Ownership % 1'.to_sym => @processor.offer.user.percent_of_ownership,
        'SS#'.to_sym => @processor.offer.user.ssn,
        :DOB => @processor.offer.user.birthdate,
        'Primary Tel'.to_sym => @processor.offer.user.phone,
        'Home Address 1'.to_sym => @processor.offer.user.address,
        :CityStateZip01 => @processor.offer.user.city_state_zip,
        'Cell Phone 01'.to_sym => @processor.offer.user.phone,
        'DL#1'.to_sym => @processor.offer.user.drivers_license_number,
        'State Issued 1'.to_sym => @processor.offer.user.drivers_license_state,
        'Merchant Print Name & Title'.to_sym => @processor.offer.user.name + ", " + @processor.offer.user.title,
        'Bank Name'.to_sym => Rails.application.config.bank_name,
        :RoutingABA => Rails.application.config.routing_number,
        :Title => @processor.offer.user.title,
    }

    form_fields_and_values.each do |k, v|
      fill k, v
    end
  end
end