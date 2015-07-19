class PaymitcoMerchantAccountAchIcl < FillablePdfForm

  def initialize(processor)
    @processor = processor
    super()
  end

  protected

  def fill_out
    form_fields_and_values = {
        'Legal Business Name'.to_sym => @processor.offer.legal_name,
        'DBA Name'.to_sym => @processor.offer.name,
        'Physical Address'.to_sym => @processor.offer.user.legal_address,
        :City => @processor.offer.user.legal_city,
        :State => @processor.offer.user.legal_state,
        :Zip => @processor.offer.user.legal_zip,
        'Business Phone'.to_sym => @processor.offer.customer_support_phone,
        'Business Fax'.to_sym => @processor.offer.fax_number,
        'Principal Name and Title'.to_sym => @processor.offer.user.name,
        'Principle SSN'.to_sym => @processor.offer.user.ssn,
        'Personal Phone'.to_sym => @processor.offer.user.phone,
        'Personal Email'.to_sym => @processor.offer.user.email,
        'Federal Tax ID'.to_sym => @processor.offer.user.ein,
        'Bank Name'.to_sym => Rails.application.config.bank_name,
        'Name on Bank Account'.to_sym => @processor.offer.user.name,
        'Bank Routing Numner'.to_sym => Rails.application.config.routing_number,
        'Bank Contact Name'.to_sym => Rails.application.config.bank_contact_name,
        'Bank Contact Phone Number'.to_sym => Rails.application.config.bank_contact_phone,
        'Primary Product Name/Description'.to_sym => @processor.offer.description,
        'Printed Name'.to_sym => @processor.offer.user.name,
        :Title => @processor.offer.user.title,
        'Customer Service Contact Name'.to_sym => @processor.offer.user.name,
        'Customer Service Contact Phone Number'.to_sym => @processor.offer.customer_support_phone,
        'Public Customer Serviuce Email Address'.to_sym => @processor.offer.customer_support_email,
        'Public Customer Service Number'.to_sym => @processor.offer.customer_support_phone,


        'DBA Name'.to_sym => @processor.offer.name,
        :Owner => @processor.offer.user.name,
        :Title => @processor.offer.user.title
    }

    form_fields_and_values.each do |k, v|
      fill k, v
    end
  end
end