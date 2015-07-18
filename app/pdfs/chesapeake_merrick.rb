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




        'CORPORATELEGAL NAME'.to_sym => @processor.offer.legal_name,
        'DBA NAME if different'.to_sym => @processor.offer.name,
        'LOCATION ADDRESS cannot be a PO Box'.to_sym => @processor.offer.user.address,
        :CITY => @processor.offer.user.city,
        :STATE => @processor.offer.user.state,
        :ZIP => @processor.offer.user.zip,
        'CONTACT NAME'.to_sym => @processor.offer.user.name,
        'CONTACT EMAIL ADDRESS'.to_sym => @processor.offer.customer_support_email,
        'BUSINESS TELEPHONE'.to_sym => @processor.offer.customer_support_phone,
        'BUSINESS FAX NUMBER'.to_sym => @processor.offer.fax_number,
        'FEDERAL TAX ID'.to_sym => @processor.offer.user.ein,
        :First => @processor.offer.user.first_name,
        :Last => @processor.offer.user.last_name,
        :Ownership => @processor.offer.user.percent_of_ownership,
        :Title => @processor.offer.user.title,
        'Date of Birth'.to_sym => @processor.offer.user.birthdate,
        :SSN => @processor.offer.user.ssn,
        'Home Address'.to_sym => @processor.offer.user.address,
        :City => @processor.offer.user.city,
        :State => @processor.offer.user.state,
        :Zip => @processor.offer.user.zip,
        'Home Phone'.to_sym => @processor.offer.user.phone,
        'Principal Name'.to_sym => @processor.offer.user.name,
        :Title_3 => @processor.offer.user.title,
        'Print Name'.to_sym => @processor.offer.user.name,
        'Print Name_3'.to_sym => @processor.offer.user.name,
        'Email  Address if different than above'.to_sym => @processor.offer.user.email,
        'Transit  ABA Routing'.to_sym => Rails.application.config.routing_number,
        'Bank Name'.to_sym => Rails.application.config.bank_name
    }

    form_fields_and_values.each do |k, v|
      fill k, v
    end
  end
end