class GlobalMerrick < FillablePdfForm

  def initialize(processor)
    @processor = processor
    super()
  end

  protected

  def fill_out
    form_fields_and_values = {
        'Legal Business Name'.to_sym => @processor.offer.legal_name,
        'Doing Business As'.to_sym => @processor.offer.name,
        'Business Location Address'.to_sym => @processor.offer.user.address,
        :City => @processor.offer.user.city,
        :State => @processor.offer.user.state,
        :Zip => @processor.offer.user.zip,
        'Contact Name'.to_sym => @processor.offer.user.name,
        'Business Phone'.to_sym => @processor.offer.user.phone,
        'Customer Service Phone'.to_sym => @processor.offer.customer_support_phone,
        :Fax => @processor.offer.fax_number,
        'Email Address'.to_sym => @processor.offer.customer_support_email,
        'Website URL'.to_sym => @processor.offer.website,
        'P1 First Name'.to_sym => @processor.offer.user.first_name,
        'P1 Last Name'.to_sym => @processor.offer.user.last_name,
        :PositionTitle => @processor.offer.user.title,
        ' Ownership'.to_sym => @processor.offer.user.percent_of_ownership,
        'Social Security Number'.to_sym => @processor.offer.user.ssn,
        'Date of Birth'.to_sym => @processor.offer.user.birthdate,
        'DL Number_1'.to_sym => @processor.offer.user.drivers_license_number,
        :State_3 => @processor.offer.user.drivers_license_state,
        :HomeAddress => @processor.offer.user.address,
        :City_3 => @processor.offer.user.city,
        :State_5 => @processor.offer.user.state,
        :Zip_3 => @processor.offer.user.zip,
        'Cell Phone'.to_sym => @processor.offer.user.phone,
        'Merchant DBA'.to_sym => @processor.offer.name,
        "Merchant's Name and Title".to_sym => @processor.offer.user.name + ", " + @processor.offer.user.title,
        'acceptance name #1'.to_sym => @processor.offer.user.name,
        'PG name #1'.to_sym => @processor.offer.user.name

    }

    form_fields_and_values.each do |k, v|
      fill k, v
    end
  end
end