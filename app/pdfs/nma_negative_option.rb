class NmaNegativeOption < FillablePdfForm

  def initialize(processor)
    @processor = processor
    super()
  end

  protected

  def fill_out
    form_fields_and_values = {
        'DBA Name'.to_sym => @processor.offer.name,
        :Owner => @processor.offer.user.name,
        :Title => @processor.offer.user.title
    }

    form_fields_and_values.each do |k, v|
      fill k, v
    end
  end
end