class ProcessorsController < ApplicationController
  before_action :set_processor, only: [:show, :edit, :update, :destroy]
  before_action :set_user
  before_action :set_offer

  # GET /processors
  # GET /processors.json
  def index
    @processors = @offer.processors
  end

  # GET /processors/1
  # GET /processors/1.json
  def show
  end

  # GET /processors/new
  # def new -- probably never going to hit this one either, but if so, we'd just need to add a name.
  #   @processor = Processor.new
  # end

  # GET /processors/1/edit
  def edit
    @processor = Processor.find(params[:id])
  end

  # POST /processors
  # POST /processors.json
  def create
    @processor = Processor.new(processor_params)

    respond_to do |format|
      if @processor.save
        format.html { redirect_to @processor, notice: 'Processor was successfully created.' }
        format.json { render :show, status: :created, location: @processor }
      else
        format.html { render :new }
        format.json { render json: @processor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /processors/1
  # PATCH/PUT /processors/1.json
  def update
    respond_to do |format|
      if @processor.update(processor_params)
        format.html { redirect_to user_offers_path(@user), notice: 'Processor was successfully updated.' }
        format.json { render :show, status: :ok, location: @processor }
      else
        format.html { render :edit }
        format.json { render json: @processor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /processors/1
  # DELETE /processors/1.json
  def destroy
    @processor.destroy
    respond_to do |format|
      format.html { redirect_to processors_url, notice: 'Processor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_processor
      @processor = Processor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def processor_params
      params.require(:processor).permit(:name, :date_submitted, :approved, :date_approved, :current_rates, :bank_1, :bank_2, :monthly_amount)
    end

    def set_user
      @user = User.find(params[:user_id])
    end

    def set_offer
      @offer = Offer.find(params[:offer_id])
    end
end
