class FeatureRequestsController < ApplicationController
  before_action :set_feature_request, only: [:show, :edit, :update, :destroy]

  
  # GET /purchases
  # GET /purchases.json
  def index
    @feature_requests = FeatureRequest.all
  end

  # GET /purchases/1
  # GET /purchases/1.json
  def show
  end

  # GET /purchases/new
  def new
    @feature_request = FeatureRequest.new
  end

  # GET /purchases/1/edit
  def edit
  end

  # POST /purchases
  # POST /purchases.json
  def create
    @feature_request = FeatureRequest.new(feature_request_params)

    respond_to do |format|
      if @feature_request.save
        format.html { redirect_to 'help', notice: 'Feature request was successfully created.' }
      else
        format.html { render action: 'new' }
      end
    end
  end

  # PATCH/PUT /purchases/1
  # PATCH/PUT /purchases/1.json
  def update
    respond_to do |format|
      if @feature_request.update(feature_request_params)
        format.html { redirect_to @feature_request, notice: 'Feature request was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @feature_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /purchases/1
  # DELETE /purchases/1.json
  def destroy
    @feature_request.destroy
    respond_to do |format|
      format.html { redirect_to feature_requests_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_feature_request
      @feature_request = FeatureRequest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def feature_request_params
      params.require(:feature_request).permit(:request)
    end
end
