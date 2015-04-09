class NationalMerchantAssociationHarrisBank < FillablePdfForm

  def initialize(processor)
    @processor = processor
    super()
  end

  protected

  def fill_out
    form_fields_and_values = {
        'DBA Name'.to_sym => @processor.offer.name,
        'DBA Info.5.1'.to_sym => @processor.offer.user.name,
        'DBA Info.1.0'.to_sym => @processor.offer.user.address,
        'DBA Info.2.0'.to_sym => @processor.offer.user.city,
        'DBA Info.3.0'.to_sym => @processor.offer.user.state,
        'DBA Info.4.0'.to_sym => @processor.offer.user.zip,
        'DBA Info.5.0'.to_sym => @processor.offer.customer_support_phone,
        'cust svc ph'.to_sym => @processor.offer.customer_support_phone,
        'DBA Info.0.1'.to_sym => @processor.offer.legal_name,
        'DBA Info.1.1'.to_sym => @processor.offer.user.address,
        'DBA Info.2.1'.to_sym => @processor.offer.user.city,
        'DBA Info.3.1'.to_sym => @processor.offer.user.state,
        'DBA Info.4.1'.to_sym => @processor.offer.user.zip,
        'DBA Info.5.1'.to_sym => @processor.offer.user.name,
        'DBA Info.7.1'.to_sym => @processor.offer.customer_support_phone,
        'DBA Info.6'.to_sym => @processor.offer.fax_number,
        'DBA Info.8.0'.to_sym => @processor.offer.website,
        'DBA Info.7.0'.to_sym => @processor.offer.customer_support_email,
        'Explain Product'.to_sym => @processor.offer.description,
        'Owners/Partners/Officers.0.0'.to_sym => @processor.offer.user.name,
        'Owners/Partners/Officers.2.0'.to_sym => @processor.offer.user.title,
        'Owners/Partners/Officers.1.0'.to_sym => @processor.offer.user.percent_of_ownership,
        'Owners/Partners/Officers.11.0'.to_sym => @processor.offer.user.email,
        'Owners/Partners/Officers.8.0'.to_sym => @processor.offer.user.ssn,
        'Owners/Partners/Officers.9.0'.to_sym => @processor.offer.user.birthdate,
        'Owners/Partners/Officers.10.0'.to_sym => @processor.offer.user.drivers_license_number,
        'Owners/Partners/Officers.12.0'.to_sym => @processor.offer.user.phone,
        'Owners/Partners/Officers.3.0'.to_sym => @processor.offer.user.address,
        'Owners/Partners/Officers.4.0'.to_sym => @processor.offer.user.city,
        'Owners/Partners/Officers.5.0'.to_sym => @processor.offer.user.state,
        'Owners/Partners/Officers.6.0'.to_sym => @processor.offer.user.zip,
        'owner-officer-years'.to_sym => @processor.offer.user.time_at_current_residence_years,
        'Settlement Info.0.0'.to_sym => Rails.application.config.bank_name,
        'Settlement Info.0.1'.to_sym => Rails.application.config.bank_contact_name,
        'bank-phone'.to_sym => Rails.application.config.bank_contact_phone,
        'Settlement Info.1.0'.to_sym => Rails.application.config.routing_number,
        'card-not-present-personal-guarantee-printedname'.to_sym => @processor.offer.user.name + ", " + @processor.offer.user.address
    }

    form_fields_and_values.each do |k, v|
      fill k, v
    end
  end
end