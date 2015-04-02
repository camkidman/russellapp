class MeritusForm < FillablePdfForm

    def initialize(processor)
      @processor = processor
      super()
    end

    protected

    def fill_out
      fill :Text4j, Date.today.to_s
      fill :Text10p, @processor.offer.name
      fill :Text11p, @processor.offer.user.name
      fill :Text40p, @processor.offer.user.email
      fill :Text38j, @processor.offer.user.phone
      fill :Text41j, @processor.offer.website
    end
end