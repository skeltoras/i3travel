class RentingDetailsController < ApplicationController
  before_action :set_renting_detail, only: [:show, :edit, :update, :destroy]

  # GET /renting_details
  # GET /renting_details.json
  def index
    @renting_details = RentingDetail.all
  end

  # GET /renting_details/1
  # GET /renting_details/1.json
  def show
  end

  # GET /renting_details/new
  def new
    @renting_detail = RentingDetail.new
  end

  # GET /renting_details/1/edit
  def edit
  end

  # POST /renting_details
  # POST /renting_details.json
  def create
    @renting_detail = RentingDetail.new(renting_detail_params)

    respond_to do |format|
      if @renting_detail.save
        format.html { redirect_to @renting_detail, notice: 'Renting detail was successfully created.' }
        format.json { render :show, status: :created, location: @renting_detail }
      else
        format.html { render :new }
        format.json { render json: @renting_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /renting_details/1
  # PATCH/PUT /renting_details/1.json
  def update
    respond_to do |format|
      if @renting_detail.update(renting_detail_params)
        format.html { redirect_to @renting_detail, notice: 'Renting detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @renting_detail }
      else
        format.html { render :edit }
        format.json { render json: @renting_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /renting_details/1
  # DELETE /renting_details/1.json
  def destroy
    @renting_detail.destroy
    respond_to do |format|
      format.html { redirect_to renting_details_url, notice: 'Renting detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_renting_detail
      @renting_detail = RentingDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def renting_detail_params
      params.require(:renting_detail).permit(:shortdescription, :longdescription)
    end
end
