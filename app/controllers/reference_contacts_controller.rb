class ReferenceContactsController < ApplicationController
  before_action :set_reference_contact, only: [:show, :edit, :update, :destroy]

  # GET /reference_contacts
  # GET /reference_contacts.json
  def index
    @reference_contacts = ReferenceContact.all
  end

  # GET /reference_contacts/1
  # GET /reference_contacts/1.json
  def show
  end

  # GET /reference_contacts/new
  def new
    @reference_contact = ReferenceContact.new
  end

  # GET /reference_contacts/1/edit
  def edit
  end

  # POST /reference_contacts
  # POST /reference_contacts.json
  def create
    @reference_contact = ReferenceContact.new(reference_contact_params)

    respond_to do |format|
      if @reference_contact.save
        format.html { redirect_to @reference_contact, notice: 'Reference contact was successfully created.' }
        format.json { render :show, status: :created, location: @reference_contact }
      else
        format.html { render :new }
        format.json { render json: @reference_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reference_contacts/1
  # PATCH/PUT /reference_contacts/1.json
  def update
    respond_to do |format|
      if @reference_contact.update(reference_contact_params)
        format.html { redirect_to @reference_contact, notice: 'Reference contact was successfully updated.' }
        format.json { render :show, status: :ok, location: @reference_contact }
      else
        format.html { render :edit }
        format.json { render json: @reference_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reference_contacts/1
  # DELETE /reference_contacts/1.json
  def destroy
    @reference_contact.destroy
    respond_to do |format|
      format.html { redirect_to reference_contacts_url, notice: 'Reference contact was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reference_contact
      @reference_contact = ReferenceContact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reference_contact_params
      params.require(:reference_contact).permit(:name, :known_from, :phone)
    end
end
