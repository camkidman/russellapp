class ChesapeakeMerrick < FillablePdfForm

  def initialize(processor)
    @processor = processor
    super()
  end

  protected

  def fill_out
    form_fields_and_values = {
        'OFFICE NUMBER'.to_sym => @processor.offer.customer_support_phone,
        'MERCHANT DBA'.to_sym => @processor.offer.name,
        'MERCHANT EMAIL'.to_sym => @processor.offer.customer_support_email,
        'Merchant Name'.to_sym => @processor.offer.user.name,
        'Merchant Address'.to_sym => @processor.offer.user.business_address,
        'Merchant Phone'.to_sym => @processor.offer.customer_support_phone,
        'Merchants Printed Name  Title'.to_sym => @processor.offer.user.name + " " + @processor.offer.user.title,
        'Business Name'.to_sym => @processor.offer.name,
        'topmostSubform[0].Page1[0].f1_01_0_[0]'.to_sym => @processor.offer.user.name,
        'topmostSubform[0].Page1[0].f1_02_0_[0]'.to_sym => @processor.offer.legal_name,
        'topmostSubform[0].Page1[0].f1_04_0_[0]'.to_sym => @processor.offer.user.business_address,
        'topmostSubform[0].Page1[0].f1_05_0_[0]'.to_sym => @processor.offer.user.business_city + ", " + @processor.offer.user.business_state + ", " + @processor.offer.user.business_zip,
        'topmostSubform[0].Page1[0].social[0].TextField1[0]'.to_sym => @processor.offer.user.ssn[0..2],
        'topmostSubform[0].Page1[0].social[0].TextField2[0]'.to_sym => @processor.offer.user.ssn[4..5],
        'topmostSubform[0].Page1[0].social[0].TextField2[1]'.to_sym => @processor.offer.user.ssn[7..-1],
        'topmostSubform[0].Page1[0].social[0].TextField2[2]'.to_sym => @processor.offer.user.ein[0..1],
        'topmostSubform[0].Page1[0].social[0].TextField2[3]'.to_sym => @processor.offer.user.ein[3..-1],
        'Corporate or Legal Name'.to_sym => @processor.offer.legal_name,
        'Doing Business As'.to_sym => @processor.offer.name,
        'Corporate Address'.to_sym => @processor.offer.user.business_address,
        :City => @processor.offer.user.business_city,
        :State => @processor.offer.user.business_state,
        :Zip => @processor.offer.user.business_zip,
        'Telephone Number'.to_sym => @processor.offer.customer_support_phone,
        'Fax Number'.to_sym => @processor.offer.fax_number,
        'Federal Tax ID Nine Digits'.to_sym => @processor.offer.user.ein,
        'Contact Person'.to_sym => @processor.offer.user.name,
        'Location Address'.to_sym => @processor.offer.user.address,
        'Telephone Number_2'.to_sym => @processor.offer.user.phone,
        :City_2 => @processor.offer.user.city,
        :State_2 => @processor.offer.user.state,
        :Zip_2 => @processor.offer.user.zip,
        'Email Address'.to_sym => @processor.offer.customer_support_email,
        'Web Address'.to_sym => @processor.offer.website,
        'OWNERS AND OFFICERS'.to_sym => @processor.offer.user.name,
        :SSN => @processor.offer.user.ssn,
        :Title => @processor.offer.user.title,
        'Residential Address City State Zip County'.to_sym => @processor.offer.user.full_address,
        'Drivers License Number'.to_sym => @processor.offer.user.drivers_license_number,
        'Date of Birth'.to_sym => @processor.offer.user.birthdate,
        'Text13_YRS_3'.to_sym => @processor.offer.user.time_at_current_residence_years,
        'Text14_MOS_3'.to_sym => @processor.offer.user.time_at_current_residence_months,
        'MERCHANT NAME_2'.to_sym => @processor.offer.user.name,
        'Merchant Name Print'.to_sym => @processor.offer.user.name,
        :Its => @processor.offer.user.title,
        :Guarantor => @processor.offer.user.name,





        'Equity Ownership'.to_sym => @processor.offer.user.percent_of_ownership,


        :DoBDay_2 => @processor.offer.user.birthdate.month,
        :DoBMonth_2 => @processor.offer.user.birthdate.day,
        :DoBYear_2 => @processor.offer.user.birthdate.year,
        'Residence TelephoneA'.to_sym => @processor.offer.user.phone[0..2],
        'Residence TelephoneB'.to_sym => @processor.offer.user.phone[4..-1],
        'Text18_Bank ref_'.to_sym => Rails.application.config.bank_name,
        'Telephone Number_3'.to_sym => Rails.application.config.bank_contact_phone,
        'Text17_Contact_'.to_sym => Rails.application.config.bank_contact_name,
        :REFERENCE => Rails.application.config.trade_reference,
        'Telephone Number_4'.to_sym => Rails.application.config.trade_reference_contact_phone,
        :Contact => Rails.application.config.trade_reference_contact_name,
        'Print Merchant Name'.to_sym => @processor.offer.user.name,
        'PLEASE PRINT NAME'.to_sym => @processor.offer.user.name,
        'MERCHANT NAME'.to_sym => @processor.offer.user.name,
        'Merchant Name-'.to_sym => @processor.offer.name,
        'Merchant Address'.to_sym => @processor.offer.user.address + " " + @processor.offer.user.city + " " + @processor.offer.user.state + ", " + @processor.offer.user.zip,
        'Merchant Phone'.to_sym => @processor.offer.customer_support_phone,
        'Merchants Printed Name  Title'.to_sym => @processor.offer.user.name + " " + @processor.offer.user.title,
        :DBA => @processor.offer.name,
        'City--'.to_sym => @processor.offer.user.city,
        'State--'.to_sym => @processor.offer.user.state,
        'Merchant Name'.to_sym => @processor.offer.user.name,
        :SS1 => @processor.offer.user.ssn[0..2],
        :SS2 => @processor.offer.user.ssn[4..5],
        :SS3 => @processor.offer.user.ssn[7..-1],
        :Name => @processor.offer.user.name,
        'Business Name'.to_sym => @processor.offer.legal_name,
        :Address => @processor.offer.user.address,
        'Address 2'.to_sym => @processor.offer.user.city + " " + @processor.offer.user.state + ", " + @processor.offer.user.zip
    }

    form_fields_and_values.each do |k, v|
      fill k, v
    end
  end
end