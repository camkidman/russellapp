class VpsMerchant < FillablePdfForm

  def initialize(processor)
    @processor = processor
    super()
  end

  protected

  def fill_out
    form_fields_and_values = {
        :Text5 => @processor.offer.legal_name,
        :Text12 => @processor.offer.name,
        :Text6 => @processor.offer.user.address,
        :Text13 => @processor.offer.user.address,
        :Text7 => @processor.offer.user.city_state_zip,
        :Text14 => @processor.offer.user.city_state_zip,
        :Text8 => @processor.offer.customer_support_phone,
        :Text9 => @processor.offer.user.name,
        :Text15 => @processor.offer.customer_support_phone,
        :Text16 => @processor.offer.website,
        :Text11 => @processor.offer.fax_number,
        :Text17 => @processor.offer.customer_support_email,
        :Text56 => Rails.application.config.bank_name,
        :Text57 => Rails.application.config.routing_number[0],
        :Text58 => Rails.application.config.routing_number[1],
        :Text59 => Rails.application.config.routing_number[2],
        :Text60 => Rails.application.config.routing_number[3],
        :Text61 => Rails.application.config.routing_number[4],
        :Text62 => Rails.application.config.routing_number[5],
        :Text63 => Rails.application.config.routing_number[6],
        :Text64 => Rails.application.config.routing_number[7],
        :Text65 => Rails.application.config.routing_number[8],
        :Text67 => Rails.application.config.bank_contact_phone[0],
        :Text68 => Rails.application.config.bank_contact_phone[1],
        :Text69 => Rails.application.config.bank_contact_phone[2],
        :Text70 => Rails.application.config.bank_contact_phone[4],
        :Text71 => Rails.application.config.bank_contact_phone[5],
        :Text72 => Rails.application.config.bank_contact_phone[6],
        :Text73 => Rails.application.config.bank_contact_phone[8],
        :Text74 => Rails.application.config.bank_contact_phone[9],
        :Text75 => Rails.application.config.bank_contact_phone[10],
        :Text76 => Rails.application.config.bank_contact_phone[11],
        :Text101 => @processor.offer.user.name,
        :Text102 => @processor.offer.user.title,
        :Text103 => @processor.offer.user.birthdate,
        :Text104 => @processor.offer.user.ssn,
        :Text105 => @processor.offer.user.percent_of_ownership,
        :Text106 => @processor.offer.user.address,
        :Text107 => @processor.offer.user.city,
        :Text108 => @processor.offer.user.state,
        :Text109 => @processor.offer.user.zip,
        :Text110 => @processor.offer.user.time_at_current_residence_years,
        :Text111 => @processor.offer.user.phone,
        :Text112 => @processor.offer.user.drivers_license_number,
        :Text113 => @processor.offer.user.drivers_license_state,
        'f1-1'.to_sym => @processor.offer.user.name,
        'f1-2'.to_sym => @processor.offer.legal_name,
        'f1-4'.to_sym => @processor.offer.user.address,
        'f1-5'.to_sym => @processor.offer.user.city_state_zip
    }

    form_fields_and_values.each do |k, v|
      fill k, v
    end
  end
end