class CountryinformationsController < ApplicationController
  before_action :set_countryinformation, only: %i[ show edit update destroy ]

  # GET /countryinformations or /countryinformations.json
  def index
    @countryinformations = Countryinformation.all
  end

  # GET /countryinformations/1 or /countryinformations/1.json
  def show
  end

  # GET /countryinformations/new
  def new
    @countryinformation = Countryinformation.new
  end

  # GET /countryinformations/1/edit
  def edit
  end

  # POST /countryinformations or /countryinformations.json
  def create
    @countryinformation = Countryinformation.new(countryinformation_params)

    respond_to do |format|
      if @countryinformation.save
        format.html { redirect_to countryinformation_url(@countryinformation), notice: "Countryinformation was successfully created." }
        format.json { render :show, status: :created, location: @countryinformation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @countryinformation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /countryinformations/1 or /countryinformations/1.json
  def update
    respond_to do |format|
      if @countryinformation.update(countryinformation_params)
        format.html { redirect_to countryinformation_url(@countryinformation), notice: "Countryinformation was successfully updated." }
        format.json { render :show, status: :ok, location: @countryinformation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @countryinformation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /countryinformations/1 or /countryinformations/1.json
  def destroy
    @countryinformation.destroy

    respond_to do |format|
      format.html { redirect_to countryinformations_url, notice: "Countryinformation was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_countryinformation
      @countryinformation = Countryinformation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def countryinformation_params
      params.require(:countryinformation).permit(:name, :capital, :population, :formeetat, :langueoficiel, :flag, :espaceschengen, :zoneeuro)
    end
end
