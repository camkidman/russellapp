class HumboltHarris < FillablePdfForm

  def initialize(processor)
    @processor = processor
    super()
  end

  protected

  def fill_out
    form_fields_and_values = {
        'Merchant DBA'.to_sym => @processor.offer.name,
        'Merchants Name and Title'.to_sym => @processor.offer.user.name + ", " + @processor.offer.user.title,
        'Legal Business Name As registered with IRS'.to_sym => @processor.offer.legal_name,
        'Doing Business As Appears on Cardholder statements'.to_sym => @processor.offer.name,
        'Location Address'.to_sym => @processor.offer.user.address,
        :City => @processor.offer.user.city,
        :State => @processor.offer.user.state,
        :Zip => @processor.offer.user.zip,
        'Billing Address'.to_sym => @processor.offer.user.address,
        :City_2 => @processor.offer.user.city,
        :State_2 => @processor.offer.user.state,
        :Zip_2 => @processor.offer.user.zip,
        'Contact Names'.to_sym => @processor.offer.user.name,
        'Business Phone'.to_sym => @processor.offer.user.phone,
        'Customer Service Phone'.to_sym => @processor.offer.customer_support_phone,
        :Fax => @processor.offer.fax_number,
        :Email => @processor.offer.customer_support_email,
        'URL Use additional sheets if needed to list all URLs'.to_sym => @processor.offer.website,
        'Principal 1 Name'.to_sym => @processor.offer.user.name,
        :PositionTitle => @processor.offer.user.title,
        ' Ownership'.to_sym => @processor.offer.user.percent_of_ownership,
        'Social Security'.to_sym => @processor.offer.user.ssn,
        'Date of Birth'.to_sym => @processor.offer.user.birthdate,
        'Drivers License'.to_sym => @processor.offer.user.drivers_license_number,
        :State_3 => @processor.offer.user.drivers_license_state,
        'Home Address Own Rent'.to_sym => @processor.offer.user.address,
        :City_3 => @processor.offer.user.city,
        :State_5 => @processor.offer.user.state,
        :Zip_3 => @processor.offer.user.zip,
        'Home Phone'.to_sym => @processor.offer.user.phone,
        'Principal Email'.to_sym => @processor.offer.user.email,
        'Bank Name'.to_sym => Rails.application.config.bank_name,
        :Phone_3 => Rails.application.config.bank_contact_phone,
        'Transit  RoutingABA'.to_sym => Rails.application.config.routing_number,
        'Print Name'.to_sym => @processor.offer.user.name
    }

    form_fields_and_values.each do |k, v|
      fill k, v
    end
  end
end