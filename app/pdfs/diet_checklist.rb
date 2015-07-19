class DietChecklist < FillablePdfForm

  def initialize(processor)
    @processor = processor
    super()
  end

  protected

  def fill_out
    form_fields_and_values = {
        'DBA Name'.to_sym => @processor.offer.name,
        :Owner => @processor.offer.user.name,
        :Title => @processor.offer.user.title,
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

    }

    form_fields_and_values.each do |k, v|
      fill k, v
    end
  end
end