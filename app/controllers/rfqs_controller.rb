class RfqsController < ApplicationController

  before_action :set_rfq, only: [:show, :edit, :update]

  # GET /rfqs
  # GET /rfqs.json
  def index
    @rfqs = Rfq.find(:all, :conditions => {:status => false})
  end

  # GET /rfqs/1
  # GET /rfqs/1.json
  def show
  end

  # GET /rfqs/new
  def new
    @rfq = Rfq.new
  end

  def edit
  end

  # POST /rfqs
  # POST /rfqs.json
  def create
    @rfq = Rfq.new(rfq_params)
    @rfq.user_id = current_user.id
    @rfq.status = false
    

    respond_to do |format|
      if @rfq.save
        format.html { redirect_to @rfq, notice: 'Request was successfully created.' }
        format.json { render action: 'show', status: :created, location: @rfq }
      else
        format.html { render action: 'new' }
        format.json { render json: @rfq.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rfqs/1
  # PATCH/PUT /rfqs/1.json
  def update
    respond_to do |format|
      if @rfq.update(rfq_params)
        format.html { redirect_to @rfq, notice: 'Request was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @rfq.errors, status: :unprocessable_entity }
      end
    end
  end

  def create_quote
    @rfq = Rfq.find(params[:rfq_id])
    @rfq.status = true
    @rfq.save

    @quote = Quote.new
    @quote.user_id = current_user.id
    @quote.rfq_id = @rfq.id
    @quote.commodity = @rfq.commodity
    @quote.brand = @rfq.brand
    @quote.pack_size = @rfq.pack_size
    @quote.volume = @rfq.volume
    @quote.shipment = @rfq.shipment
    @quote.save
    p @quote

    respond_to do |format|
      if @quote.save
        format.html { redirect_to edit_quote_path(@quote), notice: 'Quote was successfully created.' }
        format.json { render action: 'show', status: :created, location: @quote }
      else
        format.html { render action: 'new' }
        format.json { render json: @quote.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rfq
      @rfq = Rfq.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rfq_params
      params.require(:rfq).permit(:commodity, :brand, :pack_size, :volume, :shipment, :user_id)
    end
end
