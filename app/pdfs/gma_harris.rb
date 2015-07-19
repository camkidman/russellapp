class EmsHarris < FillablePdfForm

  def initialize(processor)
    @processor = processor
    super()
  end

  protected

  def fill_out
    form_fields_and_values = {
        'Legal Name'.to_sym => @processor.offer.legal_name,
        'Legal Address 1'.to_sym => @processor.offer.user.business_address,
        'City 1'.to_sym => @processor.offer.user.business_city,
        'State 1'.to_sym => @processor.offer.user.business_state,
        'Zip 1'.to_sym => @processor.offer.user.business_zip,
        'Area Code 1'.to_sym => @processor.offer.customer_support_phone[0..2],
        'Tel. 1'.to_sym => @processor.offer.customer_support_phone[4..-1],
        'Contact 1'.to_sym => @processor.offer.user.name,
        'E-mail Address'.to_sym => @processor.offer.customer_support_email,
        'Tax 1'.to_sym => @processor.offer.user.ein[0],
        'Tax 2'.to_sym => @processor.offer.user.ein[1],
        'Tax 3'.to_sym => @processor.offer.user.ein[3],
        'Tax 4'.to_sym => @processor.offer.user.ein[4],
        'Tax 5'.to_sym => @processor.offer.user.ein[5],
        'Tax 6'.to_sym => @processor.offer.user.ein[6],
        'Tax 7'.to_sym => @processor.offer.user.ein[7],
        'Tax 8'.to_sym => @processor.offer.user.ein[8],
        'Tax 9'.to_sym => @processor.offer.user.ein[9],
        'Name of Account DBA'.to_sym => @processor.offer.name,
        'Physical Address 1'.to_sym => @processor.offer.user.address,
        'City 2'.to_sym => @processor.offer.user.city,
        'State 2'.to_sym => @processor.offer.user.state,
        'Zip 2'.to_sym => @processor.offer.user.zip,
        'DBA Area Code 1'.to_sym => @processor.offer.customer_support_phone[0..2],
        'DBA Tel'.to_sym => @processor.offer.customer_support_phone[4..-1],
        'DBA Fax Area Code 1'.to_sym => @processor.offer.fax_number[0..2],
        'DBA Fax'.to_sym => @processor.offer.fax_number[4..-1],
        'Website Address'.to_sym => @processor.offer.website,
        'Country Primary Business'.to_sym => 'United States',
        'Bank Reference'.to_sym => Rails.application.config.bank_name,
        'Bank Contact'.to_sym => Rails.application.config.bank_contact_name,
        'Bank Area Code 1'.to_sym => Rails.application.config.bank_contact_phone[0..2],
        'Bank Tel. 1'.to_sym => Rails.application.config.bank_contact_phone[4..-1],
        'Owner\'s Name'.to_sym => @processor.offer.user.name,
        'Title'.to_sym => @processor.offer.user.title,
        'Date Of Birth'.to_sym => @processor.offer.user.birthdate,
        'Applicant\'s SS#'.to_sym => @processor.offer.user.ssn,
        'Equity Ownership'.to_sym => @processor.offer.user.percent_of_ownership,
        'Residence Address'.to_sym => @processor.offer.user.address,
        'Owners City'.to_sym => @processor.offer.user.city,
        'Res. State 1'.to_sym => @processor.offer.user.state,
        'Res. Zip'.to_sym => @processor.offer.user.zip,
        '# of Years'.to_sym => @processor.offer.user.time_at_current_residence_years,
        'US Gov Issued ID Ow1'.to_sym => @processor.offer.user.drivers_license_number,
        'Type of ID Ow1'.to_sym => "Driver's License",
        'Expiration Date Ow1'.to_sym => @processor.offer.user.drivers_license_expiration,
        'Country Citizenship Ow1'.to_sym => 'United States',
        'Area Code 4'.to_sym => @processor.offer.user.phone[0..2],
        'Owners Home Tel'.to_sym => @processor.offer.user.phone[4..-1],
        'Biz Trade Ref Name'.to_sym => Rails.application.trade_reference,
        'Trade Contact'.to_sym => Rails.application.trade_reference_contact_name,
        'Trade Area Code 1'.to_sym => Rails.application.config.trade_reference_contact_phone[0..2],
        'Trade Tel 1'.to_sym => Rails.application.config.trade_reference_contact_phone[4..-1],
        'ABA Routing #'.to_sym => Rails.application.config.routing_number,
        'Text10.4'.to_sym => @processor.offer.user.name + ", " + @processor.offer.user.title,
        'Print Name'.to_sym => @processor.offer.user.name
    }

    form_fields_and_values.each do |k, v|
      fill k, v
    end
  end
end