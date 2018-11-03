class DeliverynotesController < ApplicationController
  before_action :set_deliverynote, only: [:show, :edit, :update, :destroy]

  # GET /deliverynotes
  # GET /deliverynotes.json
  def index
    @deliverynotes = Deliverynote.all
  end

  # GET /deliverynotes/1
  # GET /deliverynotes/1.json
  def show
  end

  # GET /deliverynotes/new
  def new
    @deliverynote = Deliverynote.new
  end

  # GET /deliverynotes/1/edit
  def edit
  end

  # POST /deliverynotes
  # POST /deliverynotes.json
  def create
    @deliverynote = Deliverynote.new(deliverynote_params)

    respond_to do |format|
      if @deliverynote.save
        format.html { redirect_to @deliverynote, notice: 'Deliverynote was successfully created.' }
        format.json { render :show, status: :created, location: @deliverynote }
      else
        format.html { render :new }
        format.json { render json: @deliverynote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /deliverynotes/1
  # PATCH/PUT /deliverynotes/1.json
  def update
    respond_to do |format|
      if @deliverynote.update(deliverynote_params)
        format.html { redirect_to @deliverynote, notice: 'Deliverynote was successfully updated.' }
        format.json { render :show, status: :ok, location: @deliverynote }
      else
        format.html { render :edit }
        format.json { render json: @deliverynote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /deliverynotes/1
  # DELETE /deliverynotes/1.json
  def destroy
    @deliverynote.destroy
    respond_to do |format|
      format.html { redirect_to deliverynotes_url, notice: 'Deliverynote was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_deliverynote
      @deliverynote = Deliverynote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def deliverynote_params
      params.require(:deliverynote).permit(:company_id, :client_id, :address_id, :address, :tax_id, :tax, :discount_id, :discount, :payment, :date, :observations, :expiration, :total, :tariff_code, :gross_load, :net_load, :receiver, :sender, :has_invoice, :has_forecast, :has_order, :has_delivery, :invoice_id, :forecast_id, :order_id, :deliverynote_id)
    end
end
