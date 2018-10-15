class ApartmentComplexesController < ApplicationController
  before_action :set_apartment_complex, only: [:show, :edit, :update, :destroy]

  # GET /apartment_complexes
  # GET /apartment_complexes.json
  def index
    @apartment_complexes = ApartmentComplex.all
  end

  # GET /apartment_complexes/1
  # GET /apartment_complexes/1.json
  def show
  end

  # GET /apartment_complexes/new
  def new
    @apartment_complex = ApartmentComplex.new
  end

  # GET /apartment_complexes/1/edit
  def edit
  end

  # POST /apartment_complexes
  # POST /apartment_complexes.json
  def create
    @apartment_complex = ApartmentComplex.new(apartment_complex_params)

    respond_to do |format|
      if @apartment_complex.save
        format.html { redirect_to @apartment_complex, notice: 'Apartment complex was successfully created.' }
        format.json { render :show, status: :created, location: @apartment_complex }
      else
        format.html { render :new }
        format.json { render json: @apartment_complex.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /apartment_complexes/1
  # PATCH/PUT /apartment_complexes/1.json
  def update
    respond_to do |format|
      if @apartment_complex.update(apartment_complex_params)
        format.html { redirect_to @apartment_complex, notice: 'Apartment complex was successfully updated.' }
        format.json { render :show, status: :ok, location: @apartment_complex }
      else
        format.html { render :edit }
        format.json { render json: @apartment_complex.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apartment_complexes/1
  # DELETE /apartment_complexes/1.json
  def destroy
    @apartment_complex.destroy
    respond_to do |format|
      format.html { redirect_to apartment_complexes_url, notice: 'Apartment complex was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apartment_complex
      @apartment_complex = ApartmentComplex.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def apartment_complex_params
      params.require(:apartment_complex).permit(:tenant_id, :location_id, :apartment_complex_name, :address)
    end
end
