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
        


        'MERCHANT DBA'.to_sym => @processor.offer.name,
        'MERCHANT EMAIL'.to_sym => @processor.offer.customer_support_email,
        'OFFICE NUMBER'.to_sym => @processor.offer.customer_support_phone,
        'Merchant Name'.to_sym => @processor.offer.user.name,
        'Merchant Address'.to_sym => @processor.offer.user.full_address,
        'Merchant Phone'.to_sym => @processor.offer.user.phone,
        'Merchants Printed Name  Title'.to_sym => @processor.offer.user.name + ", " + @processor.offer.user.title,
        'Business Name'.to_sym => @processor.offer.name,
        'topmostSubform[0].Page1[0].f1_01_0_[0]'.to_sym => @processor.offer.user.name,
        'topmostSubform[0].Page1[0].f1_02_0_[0]'.to_sym => @processor.offer.legal_name,
        'topmostSubform[0].Page1[0].f1_04_0_[0]'.to_sym => @processor.offer.user.address,
        'topmostSubform[0].Page1[0].f1_05_0_[0]'.to_sym => @processor.offer.user.city + ", " + @processor.offer.user.state + ", " + @processor.offer.user.zip,
        'topmostSubform[0].Page1[0].social[0].TextField1[0]'.to_sym => @processor.offer.user.ssn[0..2],
        'topmostSubform[0].Page1[0].social[0].TextField2[0]'.to_sym => @processor.offer.user.ssn[4..5],
        'topmostSubform[0].Page1[0].social[0].TextField2[1]'.to_sym => @processor.offer.user.ssn[7..-1],
        'Corporate or Legal Name'.to_sym => @processor.offer.legal_name,
        'Doing Business As'.to_sym => @processor.offer.name,
        'Corporate Address'.to_sym => @processor.offer.user.address,
        :City => @processor.offer.user.city,
        :State => @processor.offer.user.state,
        :Zip => @processor.offer.user.zip,
        'Location Address'.to_sym => @processor.offer.user.address,
        :City_2 => @processor.offer.user.city,
        :State_2 => @processor.offer.user.state,
        :Zip_2 => @processor.offer.user.zip,
        'Area Code 1'.to_sym => @processor.offer.user.phone[0..2],
        'Telephone Number'.to_sym => @processor.offer.user.phone[4..-1],
        'Area Code 2'.to_sym => @processor.offer.fax_number[0..2],
        'Fax Number'.to_sym => @processor.offer.fax_number[4..-1],
        'Area Code 3'.to_sym => @processor.offer.user.phone[0..2],
        'Telephone Number_2'.to_sym => @processor.offer.user.phone[4..-1],
        'Contact Person'.to_sym => @processor.offer.user.name,
        'Email Address'.to_sym => @processor.offer.customer_support_email,
        'web address'.to_sym => @processor.offer.website,
        'OWNERS AND OFFICERS'.to_sym => @processor.offer.user.name,
        :Title => @processor.offer.user.title,
        :SSN => @processor.offer.user.ssn,
        'Equity Ownership'.to_sym => @processor.offer.user.percent_of_ownership,
        'Residential Address City State Zip County'.to_sym => @processor.offer.user.full_address + ", USA",
        'drivers license number'.to_sym => @processor.offer.user.drivers_license_number,
        'Area Code 5'.to_sym => @processor.offer.user.phone[0..2],
        'Residence Telephone'.to_sym => @processor.offer.user.phone[4..-1],
        'Month 2'.to_sym => @processor.offer.user.birthdate.month,
        'Day 2'.to_sym => @processor.offer.user.birthdate.day,
        'Year 2'.to_sym => @processor.offer.user.birthdate.year,
        'Bank Reference'.to_sym => Rails.application.config.bank_name,
        'Area Code 7'.to_sym => Rails.application.config.bank_contact_phone[0..2],
        'Telephone Number_3'.to_sym => Rails.application.config.bank_contact_phone[4..-1],
        'Contact 1'.to_sym => Rails.application.config.bank_contact_name,
        'REFERENCE'.to_sym => Rails.application.config.trade_reference,
        'Area Code 8'.to_sym => Rails.application.config.trade_reference_contact_phone[0..2],
        'Telephone Number_4'.to_sym => Rails.application.config.trade_reference_contact_phone[4..-1],
        'Print Merchant Name'.to_sym => @processor.offer.user.name,
        :Title11 => @processor.offer.user.title,
        'PLEASE PRINT NAME'.to_sym => @processor.offer.user.name,
        'Print Merchant Name_2'.to_sym => @processor.offer.name,
        'Authorized Signers Name Print'.to_sym => @processor.offer.user.name
    }

    form_fields_and_values.each do |k, v|
      fill k, v
    end
  end
end