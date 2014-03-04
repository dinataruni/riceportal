class QuotesController < ApplicationController
  before_action :set_quote, only: [:show, :edit, :update, :destroy]

  # GET /quotes
  # GET /quotes.json
  def index
    @quotes = Quote.all
  end

  # GET /quotes/1
  # GET /quotes/1.json
  def show
    @commentable = @quote
    @comments = @commentable.comments
    @comment = Comment.new
  end

  # GET /quotes/new
  def new
    @quote = Quote.new
  end

  # GET /quotes/1/edit
  def edit
  end

  # POST /quotes
  # POST /quotes.json
  def create
    @quote = Quote.new(quote_params)
    @quote.user_id = current_user.id
    @quote.confirm = false

    respond_to do |format|
      if @quote.save
        format.html { redirect_to @quote, notice: 'Quote was successfully created.' }
        format.json { render action: 'show', status: :created, location: @quote }
      else
        format.html { render action: 'new' }
        format.json { render json: @quote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quotes/1
  # PATCH/PUT /quotes/1.json
  def update
    respond_to do |format|
      if @quote.update(quote_params)
        format.html { redirect_to @quote, notice: 'Quote was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @quote.errors, status: :unprocessable_entity }
      end
    end
  end

  def create_purchase
    @quote = Quote.find(params[:quote_id])
    @quote.confirm = true
    @quote.save

    @purchase = Purchase.new
    @purchase.user_id = current_user.id
    @purchase.quote_id = @quote.id
    @purchase.price = @quote.price
    @purchase.supplier = @quote.supplier
    @purchase.commodity = @quote.commodity
    @purchase.brand = @quote.brand
    @purchase.pack_size = @quote.pack_size
    @purchase.volume = @quote.volume
    @purchase.shipment = @quote.shipment
    @purchase.save
    p @purchase

    respond_to do |format|
      if @purchase.save
        format.html { redirect_to edit_purchase_path(@purchase), notice: 'Quote was successfully created.' }
        format.json { render action: 'show', status: :created, location: @purchase }
      else
        format.html { render action: 'new' }
        format.json { render json: @purchase.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quote
      @quote = Quote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def quote_params
      params.require(:quote).permit(:price, :commodity, :supplier, :brand, :shipment, :volume, :purchase, :pack_size)
    end
end
