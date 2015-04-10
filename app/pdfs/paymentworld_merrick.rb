class PaymentworldMerrick < FillablePdfForm

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
        'topmostSubform[0].Page2[0].LEGAL_NAME_OF_BUSINESS__IRS_FILING_NAME_MUST_MATCH_IRS_RECORD[0]'.to_sym => @processor.offer.legal_name,
        'topmostSubform[0].Page2[0].DBA_DOING_BUSINESS_AS[0]'.to_sym => @processor.offer.name,
        'topmostSubform[0].Page2[0].LOCATION__SITE_ADDRESS[0]'.to_sym => @processor.offer.user.address,
        'topmostSubform[0].Page2[0].CITY[0]'.to_sym => @processor.offer.user.city,
        'topmostSubform[0].Page2[0].STATE[0]'.to_sym => @processor.offer.user.state,
        'topmostSubform[0].Page2[0].ZIP_CODE_1[0]'.to_sym => @processor.offer.user.zip,
        'topmostSubform[0].Page2[0].COMPANY_PHONE[0]'.to_sym => @processor.offer.customer_support_phone,
        'topmostSubform[0].Page2[0].MOBILE_PHONE[0]'.to_sym => @processor.offer.user.phone,
        'topmostSubform[0].Page2[0].FAX[0]'.to_sym => @processor.offer.fax_number,
        'topmostSubform[0].Page2[0].CONTACT[0]'.to_sym => @processor.offer.user.name,
        'topmostSubform[0].Page2[0].TITLE_4[0]'.to_sym => @processor.offer.user.title,
        'topmostSubform[0].Page2[0].COMPANYWEBSITE[0]'.to_sym => @processor.offer.website,
        'topmostSubform[0].Page2[0].COMPANY_EMAIL[0]'.to_sym => @processor.offer.customer_support_email,
        'topmostSubform[0].Page2[0].PRINCIPAL_NAME_FIRST_ML_LAST_1[0]'.to_sym => @processor.offer.user.name,
        'topmostSubform[0].Page2[0].TITLE_5[0]'.to_sym => @processor.offer.user.title,
        'topmostSubform[0].Page2[0].OWNERSHIP[0]'.to_sym => @processor.offer.user.percent_of_ownership,
        'topmostSubform[0].Page2[0].DATE_OF_BIRTH__MM__DD__YYYY[0]'.to_sym => @processor.offer.user.birthdate,
        'topmostSubform[0].Page2[0].HOME_ADDRESS[0]'.to_sym => @processor.offer.user.address,
        'topmostSubform[0].Page2[0].CITY_3[0]'.to_sym => @processor.offer.user.city,
        'topmostSubform[0].Page2[0].STATE_3[0]'.to_sym => @processor.offer.user.state,
        'topmostSubform[0].Page2[0].ZIP_CODE[0]'.to_sym => @processor.offer.user.zip,
        'topmostSubform[0].Page2[0].HOME_PHONE[0]'.to_sym => @processor.offer.user.phone,
        'topmostSubform[0].Page2[0].SOCIAL_SECURITY[0]'.to_sym => @processor.offer.user.ssn,
        'topmostSubform[0].Page2[0].DRIVER_LICENSE[0]'.to_sym => @processor.offer.user.drivers_license_number,
        'topmostSubform[0].Page2[0].DRLIC_STATEEXP_DATE[0]'.to_sym => @processor.offer.user.drivers_license_state + ", " + @processor.offer.user.drivers_license_expiration.strftime("%m/%d/%y"),
        'topmostSubform[0].Page2[0].YEARS_1[0]'.to_sym => @processor.offer.user.time_at_current_residence_years,
        'topmostSubform[0].Page2[0].MONTHS_1[0]'.to_sym => @processor.offer.user.time_at_current_residence_months,
        'topmostSubform[0].Page3[0].VENDOR[0]'.to_sym => Rails.application.config.trade_reference,
        'topmostSubform[0].Page3[0].CONTACT_NAME_2[0]'.to_sym => Rails.application.config.trade_reference_contact_name,
        'topmostSubform[0].Page3[0].PHONE[0]'.to_sym => Rails.application.config.trade_reference_contact_phone,
        'topmostSubform[0].Page3[0].BANK_NAME[0]'.to_sym => Rails.application.config.bank_name,
        'topmostSubform[0].Page3[0].BANK_ROUTING_[0]'.to_sym => Rails.application.config.routing_number,
        'topmostSubform[0].Page3[0].PRINT_NAME_4[0]'.to_sym => @processor.offer.user.name,
        'topmostSubform[0].Page4[0].TITLE_7[1]'.to_sym => @processor.offer.user.title,
        'topmostSubform[0].Page4[0].PRINT_NAME_5[1]'.to_sym => @processor.offer.user.name,
        'topmostSubform[0].Page4[0].PRINT_NAME_OF_GUARANTOR[0]'.to_sym => @processor.offer.user.name
    }

    form_fields_and_values.each do |k, v|
      fill k, v
    end
  end
end