class MeritusWoodforest < FillablePdfForm

    def initialize(processor)
      @processor = processor
      super()
    end

    protected

    def fill_out
      form_fields_and_values = {
      :Text10p => @processor.offer.name,
      :Text11p => @processor.offer.user.name,
      :Text40 => @processor.offer.customer_support_email,
      :Text38j => @processor.offer.customer_support_phone,
      :Text41j => @processor.offer.website,
      :Text14 => @processor.offer.name,
      :Text15 => @processor.offer.legal_name,
      :Text16 => @processor.offer.user.address,
      :Text17 => @processor.offer.user.address,
      :Text18 => @processor.offer.user.city,
      :Text19 => @processor.offer.user.state,
      :Text20 => @processor.offer.user.zip,
      :Text21 => @processor.offer.user.city,
      :Text22 => @processor.offer.user.state,
      :Text23 => @processor.offer.user.zip,
      :Text24 => @processor.offer.customer_support_phone,
      :Text25 => @processor.offer.fax_number,
      :Text26 => @processor.offer.customer_support_phone,
      :Text27 => @processor.offer.fax_number,
      :Text31 => @processor.offer.customer_support_phone,
      :Text32 => @processor.offer.user.name,
      :Text33 => @processor.offer.user.email,
      :Text37 => @processor.offer.website,
      :Text34 => @processor.offer.description,
      :Text63 => @processor.offer.user.name,
      :Text64 => @processor.offer.user.title,
      :Text65 => @processor.offer.user.percent_of_ownership,
      :Text66 => @processor.offer.user.birthdate,
      :Text67 => @processor.offer.user.drivers_license_number + ", " + @processor.offer.user.drivers_license_state,
      :Text68 => @processor.offer.user.ssn,
      :Text69 => @processor.offer.user.address,
      :Text70 => @processor.offer.user.city + ", " + @processor.offer.user.state + ", " + @processor.offer.user.zip,
      :Text71 => @processor.offer.user.phone,
      :Text96 => Rails.application.config.trade_reference_contact_name,
      :Text97 => Rails.application.config.trade_reference,
      :Text98 => Rails.application.config.trade_reference_contact_phone,
      :Text102 => Rails.application.config.bank_contact_name,
      :Text103 => Rails.application.config.bank_contact_phone,
      :Text104 => Rails.application.config.routing_number,
      :Text10 => @processor.offer.user.name,
      :Text11 => @processor.offer.user.title,
      :Text353 => @processor.offer.user.name,
      :Text352 => @processor.offer.user.title,
      }

      form_fields_and_values.each do |k, v|
        fill k, v
      end
    end
end