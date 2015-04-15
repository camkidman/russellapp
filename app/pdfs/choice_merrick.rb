class ChoiceMerrick < FillablePdfForm

  def initialize(processor)
    @processor = processor
    super()
  end

  protected

  def fill_out
    form_fields_and_values = {
        'Corporate or Legal Name'.to_sym => @processor.offer.legal_name,
        'Doing Business As'.to_sym => @processor.offer.name,
        'Corporate Address'.to_sym => @processor.offer.user.address,
        :City => @processor.offer.user.city,
        :State => @processor.offer.user.state,
        :Zip => @processor.offer.user.zip,
        'Telephone NumberA'.to_sym => @processor.offer.customer_support_phone[0..2],
        'Telephone Number_2A'.to_sym => @processor.offer.customer_support_phone[0..2],
        'Telephone Number_2'.to_sym => @processor.offer.customer_support_phone[4..-1],
        'Telephone Number'.to_sym => @processor.offer.customer_support_phone[4..-1],
        'Fax NumberA'.to_sym => @processor.offer.fax_number[0..2],
        'Fax Number'.to_sym => @processor.offer.fax_number[4..-1],
        'Federal Tax ID Nine Digits'.to_sym => @processor.offer.user.ein,
        'Contact Person'.to_sym => @processor.offer.user.name,
        'Location Address'.to_sym => @processor.offer.user.address,
        :City_2 => @processor.offer.user.city,
        :State_2 => @processor.offer.user.state,
        :Zip_2 => @processor.offer.user.zip,
        'Email Address'.to_sym => @processor.offer.customer_support_email,
        'Web Address'.to_sym => @processor.offer.website,
        'OWNERS AND OFFICERS'.to_sym => @processor.offer.user.name,
        :SSN => @processor.offer.user.ssn,
        :Title => @processor.offer.user.title,
        :Title11 => @processor.offer.user.title,
        'Residential Address City State Zip County'.to_sym => @processor.offer.user.address + " " + @processor.offer.user.city + " " + @processor.offer.user.state + ", " + @processor.offer.user.zip,
        'Equity Ownership'.to_sym => @processor.offer.user.percent_of_ownership,
        :YRS_4 => @processor.offer.user.time_at_current_residence_years,
        :MOS_4 => @processor.offer.user.time_at_current_residence_months,
        :DoBDay_2 => @processor.offer.user.birthdate.month,
        :DoBMonth_2 => @processor.offer.user.birthdate.day,
        :DoBYear_2 => @processor.offer.user.birthdate.year,
        'Residence TelephoneA'.to_sym => @processor.offer.user.phone[0..2],
        'Residence TelephoneB'.to_sym => @processor.offer.user.phone[4..-1],
        :BANKREFERENCE => Rails.application.config.bank_name,
        'Telephone Number_3A'.to_sym => Rails.application.config.bank_contact_phone[0..2],
        'Telephone Number_3'.to_sym => Rails.application.config.bank_contact_phone[4..-1],
        :Contact_1 => Rails.application.config.bank_contact_name,
        :REFERENCE => Rails.application.config.trade_reference,
        'Telephone Number_4A'.to_sym => Rails.application.config.trade_reference_contact_phone[0..2],
        'Telephone Number_4'.to_sym => Rails.application.config.trade_reference_contact_phone[4..-1],
        :Contact => Rails.application.config.trade_reference_contact_name,
        'Print Merchant Name'.to_sym => @processor.offer.user.name,
        'PLEASE PRINT NAME'.to_sym => @processor.offer.user.name,
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