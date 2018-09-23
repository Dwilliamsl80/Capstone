class ApartmentComplexesController < ApplicationController
  before_action :set_apartmentComplex, only: [:show, :edit, :update, :destroy]

  # GET /apartmentComplexes
  # GET /apartmentComplexes.json
  def index
    @apartmentComplexes = ApartmentComplex.all
  end

  # GET /apartmentComplexes/1
  # GET /apartmentComplexes/1.json
  def show
  end

  # GET /apartmentComplexes/new
  def new
    @apartmentComplex = ApartmentComplex.new
  end

  # GET /apartmentComplexes/1/edit
  def edit
  end

  # POST /apartmentComplexes
  # POST /apartmentComplexes.json
  def create
    @apartmentComplex = ApartmentComplex.new(apartmentComplex_params)

    respond_to do |format|
      if @apartmentComplex.save
        format.html { redirect_to @apartmentComplex, notice: 'ApartmentComplex was successfully created.' }
        format.json { render :show, status: :created, location: @apartmentComplex }
      else
        format.html { render :new }
        format.json { render json: @apartmentComplex.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /apartmentComplexes/1
  # PATCH/PUT /apartmentComplexes/1.json
  def update
    respond_to do |format|
      if @apartmentComplex.update(apartmentComplex_params)
        format.html { redirect_to @apartmentComplex, notice: 'ApartmentComplex was successfully updated.' }
        format.json { render :show, status: :ok, location: @apartmentComplex }
      else
        format.html { render :edit }
        format.json { render json: @apartmentComplex.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apartmentComplexes/1
  # DELETE /apartmentComplexes/1.json
  def destroy
    @apartmentComplex.destroy
    respond_to do |format|
      format.html { redirect_to apartmentComplexes_url, notice: 'ApartmentComplex was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apartmentComplex
      @apartmentComplex = ApartmentComplex.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def apartmentComplex_params
      params.require(:apartmentComplex).permit(:locationID, :apartmentComplexName, :numberOfRooms)
    end
end
